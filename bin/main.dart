import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';

import 'generate_example_app_constants.dart';
import 'generate_package_icons.dart';
import 'utils.dart';

void main(List<String> args) async {
  try {
    print('Downloading latest phosphor release zip');
    final zipBytes = await downloadPhosphorZip();
    final zipArchive = ZipDecoder().decodeBytes(zipBytes);

    final phosphorJson = extractFileFromZip(
      zip: zipArchive,
      filePath: 'Icon Font/Font/Phosphor.json',
      outputPath: 'Phosphor.json',
    );

    deleteFile('../lib/fonts/phosphor.ttf');
    extractFileFromZip(
      zip: zipArchive,
      filePath: 'Icon Font/Font/Phosphor.ttf',
      outputPath: '../lib/fonts/phosphor.ttf',
    );

    final icons = jsonDecode(phosphorJson.readAsStringSync())['icons'] as List;
    generatePackageIcons(icons);
    generateExampleAppConstants(icons);

    deleteFile('Phosphor.json');

    print('All files generated');
  } catch (e) {
    print(e);
    exit(1);
  }
  exit(0);
}
