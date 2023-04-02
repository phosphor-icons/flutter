import 'extensions.dart';
import 'style_file_data.dart';
import 'utils.dart';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Generated the main class of the package that exposes all the style classes
void generateMainClass(List<StyleFileData> styles) {
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
                ..docs.add(style.docsLine)
                ..static = true
                ..modifier = FieldModifier.final$
                ..name = style.styleName
                ..assignment = Code(style.classConstructorLine),
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
            'package:phosphor_flutter/src/${style.classFileName}',
          ),
        ),
      )
      ..body.add(phosphorIconsClass),
  );

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../lib/src/phosphor_icons.dart',
    content: generatedFileContent,
  );
}

/// reads the phosphor json  of one style and generates a dart class
/// with all the phosphor icons constants for that style
void generateStyleClass(List icons, {required StyleFileData style}) {
  print('Generating style abstract class ${style.classFileName} file');

  final fields = icons
      // filter only valid graphs by idx of the style
      .where((icon) => icon['setIdx'] as int == style.idx)
      // Generate the field for the graph
      .map((icon) => buildFieldIconByStyle(icon, style: style))
      .toList()
    // sort the element alphabetically
    ..sort((a, b) => a.name.compareTo(b.name));

  final phosphorIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = false
      ..name = style.className
      ..fields.addAll(fields),
  );

  final phosphorLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.addAll([
        Directive.import(
          'package:phosphor_flutter/src/phosphor_icon_data.dart',
        ),
        if (style == StyleFileData.duotone)
          Directive.import(
            'package:flutter/widgets.dart',
          ),
      ])
      ..body.add(phosphorIconsClass),
  );

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );
  saveContentToFile(
    filePath: '../lib/src/${style.classFileName}',
    content: generatedFileContent,
  );
}

Field buildFieldIconByStyle(dynamic icon, {required StyleFileData style}) {
  final properties = icon['properties'] as Map<String, dynamic>;
  final fullName = properties['name'] as String;
  final name = formatName(fullName, style: style.styleName);

  final iconDocs =
      '/// ![$fullName](https://raw.githubusercontent.com/phosphor-icons/core/main/assets/${style.styleName}/$fullName.svg)';

  late Code codeStatement;

  if (style == StyleFileData.duotone) {
    if (properties['codes'] != null) {
      final graphCodes = (properties['codes'] as List).cast<int>();
      final backgroundHexCode = '0x' + graphCodes.first.toRadixString(16);
      final foregroundHexCode = '0x' + graphCodes.last.toRadixString(16);
      codeStatement = Code(
        """Stack(
      children: [
        Icon(PhosphorIconData($backgroundHexCode, '${style.styleName.capitalize()}')),
        Icon(PhosphorIconData($foregroundHexCode, '${style.styleName.capitalize()}')),
      ],
    )""",
      );
    } else {
      final graphCode = properties['code'] as int;
      final hexCode = '0x' + graphCode.toRadixString(16);
      codeStatement = Code(
        "Icon(PhosphorIconData($hexCode, '${style.styleName.capitalize()}'))",
      );
    }
  } else {
    final graphCode = properties['code'] as int;
    final hexCode = '0x' + graphCode.toRadixString(16);
    codeStatement = Code(
      "PhosphorIconData($hexCode, '${style.styleName.capitalize()}')",
    );
  }

  return Field(
    (fieldBuilder) => fieldBuilder
      ..docs.add(iconDocs)
      ..modifier = FieldModifier.final$
      ..name = name
      ..assignment = codeStatement,
  );
}
