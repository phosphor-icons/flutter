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
    """// Auto Generated File

import 'package:phosphor_flutter/phosphor_flutter.dart';

abstract class AllIcons {""",
  ];
  final mapGetterContent = <String>[
    '''
  static Map<String, PhosphorIconData> get allIconsAsMap => {
      ...boldIcons,
      ...regularIcons,
      ...thinIcons,
      ...lightIcons,
      ...fillIcons,
    };''',
  ];

  final mapBoldGetterContent = <String>[
    '\n  static Map<String, PhosphorIconData> get boldIcons => {',
    '};'
  ];

  final mapRegularGetterContent = <String>[
    '\n  static Map<String, PhosphorIconData> get regularIcons => {',
    '};'
  ];

  final mapThinGetterContent = <String>[
    '\n  static Map<String, PhosphorIconData> get thinIcons => {',
    '};'
  ];

  final mapLightGetterContent = <String>[
    '\n  static Map<String, PhosphorIconData> get lightIcons => {',
    '};'
  ];

  final mapFillGetterContent = <String>[
    '\n  static Map<String, PhosphorIconData> get fillIcons => {',
    '};'
  ];

  final iconsGetterContent =
      '\n  static List<PhosphorIconData> get icons => allIconsAsMap.values.toList();';
  final namesGetterContent =
      '\n  static List<String> get names => allIconsAsMap.keys.toList();';

  var iconsStylesMap = <String, List<String>>{};

  icons.forEach((icon) {
    var setIdx = icon['setIdx'];
    if (setIdx == 1) {
      var properties = icon['properties'];
      String fullName = properties['name'];
      String name = formatName(fullName);
      String style = fullName.split('-').last;

      if (!fullName.contains(RegExp(r'(?<=-)(fill|bold|thin|light)$'))) {
        style = 'regular';
      }

      saveStyles(iconsStylesMap, fullName);

      switch (style) {
        case 'bold':
          mapBoldGetterContent.insert(
            mapBoldGetterContent.length - 1,
            "  '$fullName': PhosphorIcons.$name,",
          );
          break;
        case 'fill':
          mapFillGetterContent.insert(
            mapFillGetterContent.length - 1,
            "  '$fullName': PhosphorIcons.$name,",
          );
          break;
        case 'light':
          mapLightGetterContent.insert(
            mapLightGetterContent.length - 1,
            "  '$fullName': PhosphorIcons.$name,",
          );
          break;
        case 'thin':
          mapThinGetterContent.insert(
            mapThinGetterContent.length - 1,
            "  '$fullName': PhosphorIcons.$name,",
          );
          break;
        case 'regular':
        default:
          mapRegularGetterContent.insert(
            mapRegularGetterContent.length - 1,
            "  '$fullName': PhosphorIcons.$name,",
          );
          break;
      }
    }
  });

  checkStyles(iconsStylesMap);

  fileLines.add(iconsGetterContent);
  fileLines.add(namesGetterContent);
  fileLines.addAll(mapGetterContent);
  fileLines.addAll(mapRegularGetterContent);
  fileLines.addAll(mapBoldGetterContent);
  fileLines.addAll(mapFillGetterContent);
  fileLines.addAll(mapLightGetterContent);
  fileLines.addAll(mapThinGetterContent);

  final finalString = fileLines.join('\n  ') + '\n}';

  final resultFile = File('./example/lib/constants/all_icons.dart');
  resultFile.writeAsStringSync(finalString);
}
