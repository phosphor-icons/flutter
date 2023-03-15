import 'extensions.dart';
import 'utils.dart';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

void generateMainClass(List<String> styles) {
  print('Generating style abstract class phosphor_icons.dart file');

  final phosphorIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = true
      ..name = 'PhosphorIcons'
      ..fields.addAll(
        styles.map(
          (style) {
            return Field(
              (fieldBuilder) => fieldBuilder
                ..docs.add('/// $style icons')
                ..static = true
                ..modifier = FieldModifier.final$
                ..name = style
                ..assignment = Code(
                  "PhosphorIcons${style.capitalize()}()",
                ),
            );
          },
        ).toList()
          ..sort((a, b) => a.name.compareTo(b.name)),
      ),
  );

  final phosphorLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.addAll(
        styles.map(
          (style) => Directive.import(
            'package:phosphor_flutter/src/phosphor_icons_$style.dart',
          ),
        ),
      )
      ..body.add(phosphorIconsClass),
  );

  // checkStyles(iconsStylesMap);

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../lib/src/phosphor_icons.dart',
    content: generatedFileContent,
  );
}

/// Phosphor Icons generator
/// reads the phosphor json and generates a dart class
/// with all the phosphor icons constants
void generateStyleClass(List icons, {required String style}) {
  print('Generating style abstract class phosphor_icons_$style.dart file');

  final phosphorIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = false
      ..name = 'PhosphorIcons${style.capitalize()}'
      ..fields.addAll(
        icons.fold<List<Field>>(
          <Field>[],
          (fields, icon) {
            var setIdx = icon['setIdx'];
            if (setIdx >= 0 && setIdx <= 4) {
              fields.add(
                buildFieldByIcon(icon, style: style),
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

  // checkStyles(iconsStylesMap);

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../lib/src/phosphor_icons_$style.dart',
    content: generatedFileContent,
  );
}

Field buildFieldByIcon(dynamic icon, {required String style}) {
  final properties = icon['properties'] as Map<String, dynamic>;
  final code = properties['code'];
  final hexCode = '0x' + code.toRadixString(16);
  final fullName = properties['name'] as String;
  final name = formatName(fullName, style: style);

  final iconDocs =
      '/// ![$fullName](https://raw.githubusercontent.com/phosphor-icons/core/main/assets/$style/$fullName.svg)';

  return Field(
    (fieldBuilder) => fieldBuilder
      ..docs.add(iconDocs)
      ..modifier = FieldModifier.final$
      ..name = name
      ..assignment = Code(
        "PhosphorIconData($hexCode, '${style.capitalize()}')",
      ),
  );
}
