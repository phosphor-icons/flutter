import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';

import 'generate_example_app_constants.dart';
import 'generate_package_icons.dart';
import 'style_file_data.dart';
import 'utils.dart';

void main(List<String> args) async {
  try {
    final zipArchive = await downloadPhosphorZip();
    for (final styleData in StyleFileData.values) {
      await _processStyleFileInZip(zipArchive, styleData);
    }

    generateMainClass(StyleFileData.values);

    print('All files generated');
    exit(0);
  } catch (e) {
    print(e);
    exit(1);
  }
}

Future<void> _processStyleFileInZip(
  Archive zipFile,
  StyleFileData styleData,
) async {
  print('Working with ${styleData.directoryName} style');

  final styleDirPath = 'Fonts/${styleData.styleName}';
  final fontFileName = styleData.fontFileName;
  final fontExtractFilePath = '../lib/fonts/$fontFileName';

  // delete any existing previous version of the font file
  deleteFile(fontExtractFilePath);
  // extract the new version of the font file
  extractFileFromZip(
    zip: zipFile,
    filePath: '$styleDirPath/$fontFileName',
    outputPath: fontExtractFilePath,
  );

  // extract the json with the style info and codes
  final styleJson = extractFileFromZip(
    zip: zipFile,
    filePath: '$styleDirPath/selection.json',
    outputPath: 'selection_${styleData.styleName}.json',
  );
  // get icons data list from the json
  final icons = jsonDecode(styleJson.readAsStringSync())['icons'] as List;
  generateStyleClass(icons, style: styleData);

  if (styleData.styleName == 'regular') {
    generateBaseClass(icons);
    generateExampleAppConstants(icons);
  }

  // deleted extracted json, not used any more
  deleteFile('selection_${styleData.styleName}.json');
}
