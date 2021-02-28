import 'dart:convert';
import 'dart:io';

/// Phosphor Icons generator
/// reads the phosphor json and generates a dart class
/// with all the phosphor icons constants
void main(List<String> arguments) {
  final jsonFile = File(arguments.first);
  assert(!jsonFile.existsSync());

  final icons = json.decode(jsonFile.readAsStringSync())['icons'];

  final fileLines = [
    """// Auto Generated File
import 'package:phosphor_flutter/src/phosphor_icon_data.dart';

abstract class PhosphorIcons {""",
  ];
  final constantsLines = <String>[];

  icons.forEach((icon) {
    var setIdx = icon['setIdx'];
    if (setIdx == 1) {
      var properties = icon['properties'];
      int code = properties['code'];
      String hexCode = '0x' + code.toRadixString(16);
      String fullName = properties['name'];
      String name = formatName(fullName);
      String style = fullName.split('-').last;

      if (!fullName.contains(RegExp(r'(fill|bold|thin|light)'))) {
        style = 'regular';
      }

      constantsLines.add(
        '/// ![$fullName](https://raw.githubusercontent.com/phosphor-icons/phosphor-icons/master/assets/$style/$fullName.svg)',
      );
      constantsLines.add('static const $name = PhosphorIconData($hexCode);\n');
    }
  });

  fileLines.addAll(constantsLines);

  final finalString = fileLines.join('\n  ') + '\n}';

  final resultFile = File('./lib/src/phosphor_icons.dart');
  resultFile.writeAsStringSync(finalString);
}

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
