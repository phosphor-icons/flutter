import 'extensions.dart';
import 'style_file_data.dart';
import 'utils.dart';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

/// Generated the main class of the package that exposes all the style classes
void generateMainClass(List<StyleFileData> styles) {
  print('Generating style abstract class phosphor_icons.dart file');

  final phosphorLib = Library((libraryBuilder) => libraryBuilder
    ..directives.addAll([
      ...styles.map(
        (style) => Directive.export(
          'package:phosphor_flutter/src/${style.classFileName}',
        ),
      ),
      Directive.export(
        'package:phosphor_flutter/src/phosphor_icons_base.dart',
      ),
    ]));

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../lib/src/phosphor_icons.dart',
    content: generatedFileContent,
  );
}

/// Generates an abstract class that exposes all the icons that every style extends
void generateBaseClass(List icons) {
  final styles = StyleFileData.values;
  final stylesEnum = Enum(
    (enumBuilder) => enumBuilder
      ..name = 'PhosphorIconsStyle'
      ..values.addAll(
        styles.map(
          (style) => EnumValue((builder) => builder
            ..name = style.styleName
            ..docs.add(style.docsLine)),
        ),
      ),
  );
  final methods = icons.map((icon) => buildBaseFieldIcon(icon)).toList();
  final phosphorIconsClass = Class((classBuilder) {
    classBuilder
      ..name = 'PhosphorIcons'
      ..docs.addAll([
        '/// This class helps to access the icons of all the styles. Use the specific style class to access the icons of that style:',
        ...styles.map((style) => '/// - [${style.className}]'),
      ])
      ..methods.addAll(methods);
  });

  final phosphorLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.addAll([
        Directive.import(
          'package:phosphor_flutter/src/phosphor_icon_data.dart',
        ),
        ...styles.map(
          (style) => Directive.import(
            'package:phosphor_flutter/src/${style.classFileName}',
          ),
        ),
      ])
      ..body.addAll([phosphorIconsClass, stylesEnum]),
  );

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${phosphorLib.accept(emitter)}',
  );
  saveContentToFile(
    filePath: '../lib/src/phosphor_icons_base.dart',
    content: generatedFileContent,
  );
}

Method buildBaseFieldIcon(dynamic icon) {
  final properties = icon['properties'] as Map<String, dynamic>;
  final fullName = properties['name'] as String;
  final name = formatName(fullName, style: 'regular');
  final styles = StyleFileData.values;
  var code = 'switch (style) {';
  for (final style in styles) {
    code += '''
case PhosphorIconsStyle.${style.styleName}:
  return ${style.className}.$name;
''';
  }
  code += '}';
  return Method((methodBuilder) => methodBuilder
    ..name = name
    ..static = true
    ..docs.addAll(styles.map((style) =>
        '/// ${style.styleName}: ![$fullName](https://raw.githubusercontent.com/phosphor-icons/core/main/assets/${style.styleName}/$fullName.svg)'))
    ..optionalParameters.add(Parameter((parameterBuilder) => parameterBuilder
      ..name = 'style'
      ..defaultTo = Code('PhosphorIconsStyle.regular')
      ..type = Reference('PhosphorIconsStyle')))
    ..body = Code(code)
    ..returns = Reference('PhosphorIconData'));
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
    ..sort(
      (a, b) => a.name.compareTo(b.name),
    );

  final phosphorIconsClass = Class((classBuilder) => classBuilder
    ..abstract = false
    ..name = style.className
    ..fields.addAll(fields)
    ..constructors.add(Constructor(
        (constructorBuilder) => constructorBuilder..constant = true)));

  final phosphorLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.add(
        Directive.import(
          'package:phosphor_flutter/src/phosphor_icon_data.dart',
        ),
      )
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

  if (style == StyleFileData.duotone && properties['codes'] != null) {
    final graphCodes = (properties['codes'] as List).cast<int>();
    final backgroundHexCode = '0x' + graphCodes.first.toRadixString(16);
    final foregroundHexCode = '0x' + graphCodes.last.toRadixString(16);
    codeStatement = Code(
      "PhosphorDuotoneIconData($foregroundHexCode, PhosphorIconData($backgroundHexCode, 'duotone'),)",
    );
  } else {
    final graphCode = properties['code'] as int;
    final hexCode = '0x' + graphCode.toRadixString(16);
    codeStatement = Code(
      "PhosphorFlatIconData($hexCode, '${style.styleName.capitalize()}')",
    );
  }

  return Field(
    (fieldBuilder) => fieldBuilder
      ..docs.add(iconDocs)
      ..modifier = FieldModifier.constant
      ..static = true
      ..name = name
      ..assignment = codeStatement,
  );
}
