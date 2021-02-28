#!/bin/bash

set -e

echo "Generation started using Phosphor.json file"

echo "Generating package phosphor_icons.dart file"
dart ./tools/generate_icons.dart ./Phosphor.json

echo "Generating example app all_icons.dart file"
dart ./tools/generate_app.dart ./Phosphor.json

echo "All files generated"
