#!/bin/bash

set -e

# get json of releases from github api, use -s for silent
echo "Downloading latest phosphor release zip"
JSON=$(curl https://api.github.com/repos/phosphor-icons/phosphor-home/releases/latest)

# Extract from the json the line with the key "browser_download_url"
DOWNLOAD_URL=$(grep "browser_download_url.*zip" <<< $JSON | cut -d : -f 2,3 | tr -d \")

# geting version
VERSION=$(echo $JSON | grep "tag_name" | cut -d : -f 2,3 | tr -d \",v)

echo "-------- DOWNLOAD URL:"
echo "$DOWNLOAD_URL"
echo "----------------------"

# download using the url from and savin in phosphor-icons.zip, use -q for quiet
wget -O phosphor-icons.zip $DOWNLOAD_URL

# unzip the file an get the json in the project dir
echo "Extracting font json file"
unzip -j -o ./phosphor-icons.zip "phosphor-icons/Icon Font/Font/phosphor.json" -d .

# unzip the file an get the font in the fonts dir
echo "Extracting font ttf file"
unzip -j -o ./phosphor-icons.zip "phosphor-icons/Icon Font/Font/phosphor.ttf" -d ../lib/fonts

# Start generation
echo "Generation started using Phosphor.json file"

echo "Generating package phosphor_icons.dart file"
dart ./generate_icons.dart ./phosphor.json

echo "Generating example app all_icons.dart file"
dart ./generate_app.dart ./phosphor.json

echo "All files generated"

# update package version
# sed -i ".bak" "2s/.*/version: $VERSION # auto generated version/" pubspec.yaml

echo "Removing temp files"
rm ./phosphor-icons.zip ./phosphor.json