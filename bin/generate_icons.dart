import 'dart:convert';
import 'dart:io';
import 'utils.dart';

/// Phosphor Icons generator
/// reads the phosphor json and generates a dart class
/// with all the phosphor icons constants
void main(List<String> arguments) {
  final jsonFile = File(arguments.first);
  assert(!jsonFile.existsSync());

  final icons = json.decode(jsonFile.readAsStringSync())['icons'];

  final fileLines = [
    '''// Auto Generated File
import 'package:phosphor_flutter/src/phosphor_icon_data.dart';

abstract class PhosphorIcons {''',
  ];
  final constantsLines = <String>[];

  var iconsStylesMap = <String, List<String>>{};

  icons.forEach((icon) {
    var setIdx = icon['setIdx'];
    if (setIdx == 0) {
      var properties = icon['properties'];
      int code = properties['code'];
      String hexCode = '0x' + code.toRadixString(16);
      String fullName = properties['name'];
      String name = formatName(fullName);
      String style = fullName.split('-').last;

      if (!fullName.contains(RegExp(r'(?<=-)(fill|bold|thin|light)$'))) {
        style = 'regular';
      }

      saveStyles(iconsStylesMap, fullName);

      constantsLines.add(
        '/// ![$fullName](https://raw.githubusercontent.com/phosphor-icons/phosphor-icons/master/assets/$style/$fullName.svg)',
      );
      constantsLines.add('static const $name = PhosphorIconData($hexCode);\n');
    }
  });

  checkStyles(iconsStylesMap);

  fileLines.addAll(constantsLines);

  final finalString = fileLines.join('\n  ') + '\n}';

  final resultFile = File('../lib/src/phosphor_icons.dart');
  resultFile.writeAsStringSync(finalString);
}
