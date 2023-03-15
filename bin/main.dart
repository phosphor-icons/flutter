import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';

import 'generate_example_app_constants.dart';
import 'generate_package_icons.dart';
import 'utils.dart';

const fileNames = {
  // zip containing directory : file name
  'bold': 'Phosphor-Bold.ttf', // idx 3
  'fill': 'Phosphor-Fill.ttf', // idx 4
  'light': 'Phosphor-Light.ttf', // idx 2
  'thin': 'Phosphor-Thin.ttf', // idx 1
  // 'duotone': 'Phosphor-Duotone.ttf', // idx 5
  'regular': 'Phosphor.ttf', // idx 0
};

void main(List<String> args) async {
  try {
    print('Downloading latest phosphor release zip');
    final zipBytes = await downloadPhosphorZip();
    final zipArchive = ZipDecoder().decodeBytes(zipBytes);

    for (final entry in fileNames.entries) {
      print('Working with ${entry.key} style');

      final styleName = entry.key;
      final styleDirPath = '2.0.0/Fonts/$styleName';
      final fontFileName = entry.value;
      final fontExtractFilePath = '../lib/fonts/$fontFileName';

      final styleJson = extractFileFromZip(
        zip: zipArchive,
        filePath: '$styleDirPath/selection.json',
        outputPath: 'selection_$styleName.json',
      );
      deleteFile(fontExtractFilePath);
      extractFileFromZip(
        zip: zipArchive,
        filePath: '$styleDirPath/$fontFileName',
        outputPath: fontExtractFilePath,
      );

      final icons = jsonDecode(styleJson.readAsStringSync())['icons'] as List;
      generateStyleClass(icons, style: styleName);

      if (styleName == 'regular') {
        generateExampleAppConstants(icons);
      }

      deleteFile('selection_$styleName.json');
    }

    generateMainClass(fileNames.keys.toList());

    print('All files generated');
    exit(0);
  } catch (e) {
    print(e);
    exit(1);
  }
}
