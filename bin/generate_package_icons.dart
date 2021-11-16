import 'utils.dart';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Phosphor Icons generator
/// reads the phosphor json and generates a dart class
/// with all the phosphor icons constants
void generatePackageIcons(List icons) {
  print('Generating package phosphor_icons.dart file');

  var iconsStylesMap = <String, List<String>>{};

  final phosphorIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = true
      ..name = 'PhosphorIcons'
      ..fields.addAll(
        icons.fold<List<Field>>(
          <Field>[],
          (fields, icon) {
            var setIdx = icon['setIdx'];
            if (setIdx == 0) {
              fields.add(
                buildFieldByIcon(
                  icon,
                  iconsStylesMap,
                ),
              );
            }
            return fields;
          },
        )..sort(
            (a, b) => a.name.compareTo(b.name),
          ),
      ),
  );

  final phosphorLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.add(
        Directive.import(
          'package:phosphor_flutter/src/phosphor_icon_data.dart',
        ),
      )
      ..body.add(phosphorIconsClass),
  );

  checkStyles(iconsStylesMap);

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../lib/src/phosphor_icons.dart',
    content: generatedFileContent,
  );
}

Field buildFieldByIcon(dynamic icon, Map<String, List<String>> iconsStylesMap) {
  final properties = icon['properties'] as Map<String, dynamic>;
  final code = properties['code'];
  final hexCode = '0x' + code.toRadixString(16);
  final fullName = properties['name'] as String;
  final name = formatName(fullName);
  var style = fullName.split('-').last;

  if (!fullName.contains(RegExp(r'(?<=-)(fill|bold|thin|light)$'))) {
    style = 'regular';
  }

  saveStyles(iconsStylesMap, fullName);

  final iconDocs =
      '/// ![$fullName](https://raw.githubusercontent.com/phosphor-icons/phosphor-icons/master/assets/$style/$fullName.svg)';

  return Field(
    (fieldBuilder) => fieldBuilder
      ..docs.add(iconDocs)
      ..static = true
      ..modifier = FieldModifier.constant
      ..name = name
      ..assignment = Code('PhosphorIconData($hexCode)'),
  );
}
