import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';

import 'generate_example_app_constants.dart';
import 'generate_package_icons.dart';
import 'style_file_data.dart';
import 'utils.dart';

void main(List<String> args) async {
  try {
    final result = await downloadPhosphorZip();
    final zipArchive = result.archive;
    final version = result.version;
    _updatePubspec(result.version);
    for (final styleData in StyleFileData.values) {
      await _processStyleFileInZip(zipArchive, styleData, version);
    }

    generateMainClass(StyleFileData.values);

    print('All files generated');
    exit(0);
  } catch (e) {
    print(e);
    exit(1);
  }
}

Future<void> _updatePubspec(String version) async {
  final pubspecs = {
    'pubspec.yaml',
    '../pubspec.yaml',
  };
  for (final current in pubspecs) {
    final pubspecFile = File(current);
    final pubspecContent = await pubspecFile.readAsString();
    RegExp exp = RegExp(r'version:\s(?<version>.+)\+(?<build>.+)');
    final build = exp.firstMatch(pubspecContent)?.namedGroup('build');
    final updatedPubspecContent = pubspecContent.replaceAllMapped(
      exp,
      (match) => 'version: $version+${int.parse(build ?? '0') + 1}',
    );
    await pubspecFile.writeAsString(updatedPubspecContent);
  }
}

Future<void> _processStyleFileInZip(
  Archive zipFile,
  StyleFileData styleData,
  String version,
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
