import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:http/http.dart' as http;

/// Format the icon name in camelCase
String formatName(String name) {
  final splitName = name.toLowerCase().split('-');
  return splitName
      .map((word) {
        if (splitName.indexOf(word) == 0) return word;
        return word.replaceFirst(word[0], word[0].toUpperCase());
      })
      .toList()
      .join();
}

/// Save the styles of the icons in a map passed
void saveStyles(Map<String, List<String>> iconsStylesMap, String fullName) {
  var style = 'regular';
  var fullNameAsList = fullName.toLowerCase().split('-');
  if (fullName.contains(RegExp(r'(?<=-)(fill|bold|thin|light)$'))) {
    style = fullNameAsList.removeLast();
  }
  var baseName = fullNameAsList.join('-');
  iconsStylesMap[baseName] ??= [];
  iconsStylesMap[baseName]!.add(style);
}

/// Checks if all the icons in the map has his five styles
void checkStyles(Map<String, List<String>> iconsMap) {
  for (var iconStyles in iconsMap.entries) {
    if (iconStyles.value.length < 5)
      throw Exception(
        '''
Icon [${iconStyles.key}] has missing styles
Found ${iconStyles.value}
Should be ${['regular', 'fill', 'bold', 'thin', 'light']}
''',
      );
  }
}

/// Write a [String] to a file
void saveContentToFile({
  required String filePath,
  required String content,
}) {
  final resultFile = File(filePath);
  if (!resultFile.existsSync()) {
    resultFile.createSync(
      recursive: true,
    );
  }
  resultFile.writeAsStringSync(
    '''// Auto generated File
// DON'T EDIT BY HAND

$content''',
  );
}

/// Downloads to memory a the latest release zip [Archive]
/// from Phosphor Github repository
Future<Uint8List> downloadPhosphorZip() async {
  final client = http.Client();
  final jsonUrl = Uri.parse(
    'https://api.github.com/repos/phosphor-icons/phosphor-home/releases/latest',
  );
  final request = await client.get(jsonUrl);
  final releaseJson = jsonDecode(request.body);
  final downloadUrl = Uri.tryParse(
    releaseJson['assets'][0]['browser_download_url'] as String,
  );

  if (downloadUrl == null) {
    throw Exception('Download Url is null');
  } else {
    print('-------- DOWNLOAD URL:------------');
    print('$downloadUrl');
    print('----------------------------------');
    final fileRequest = await client.get(downloadUrl);
    return fileRequest.bodyBytes;
  }
}

/// Extracts a file from a zip [Archive]
/// and writes it to disk
///
/// [filePath] is the path of the file inside the zip
///
/// [outputPath] is the path where the extracted file will be saved to disk
/// This should include the extension.
/// If this is omitted the extracted file will be saved following the path as
/// [filePath]
File extractFileFromZip({
  required Archive zip,
  required String filePath,
  String? outputPath,
}) {
  print('Extracting $filePath');
  final extractedArchive = zip.findFile(filePath);
  if (extractedArchive == null) {
    throw Exception('$filePath was not found inside zip');
  }
  print('Saving in $outputPath');
  final extractedFile = File(outputPath ?? filePath)
    ..createSync(recursive: true)
    ..writeAsBytesSync(extractedArchive.content as List<int>);

  return extractedFile;
}

void deleteFile(String path) {
  final file = File(path);
  if (file.existsSync()) {
    print('Deleting $path');
    file.deleteSync();
  }
}
