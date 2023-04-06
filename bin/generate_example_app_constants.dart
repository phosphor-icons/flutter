import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'style_file_data.dart';
import 'utils.dart';

/// reads a list of icons graphs and generates a dart class
/// with all the phosphor icons constants from the generated files
void generateExampleAppConstants(List icons) {
  print('Generating example app all_icons.dart file');

  final stylesMaps = {
    StyleFileData.regular: <String>[],
    StyleFileData.thin: <String>[],
    StyleFileData.light: <String>[],
    StyleFileData.bold: <String>[],
    StyleFileData.fill: <String>[],
    StyleFileData.duotone: <String>[],
  };

  icons.forEach((icon) {
    final properties = icon['properties'] as Map<String, dynamic>;
    final fullName = properties['name'] as String;
    for (final style in StyleFileData.values) {
      final name = formatName(fullName, style: 'regular');
      final mapEntryLine =
          "'$fullName': PhosphorIcons.$name(PhosphorIconsStyle.${style.styleName})";
      stylesMaps[style]!.add(mapEntryLine);
    }
  });

  final allIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = true
      ..name = 'AllIcons'
      ..methods.addAll(
        [
          buildGetterMethod(
            returnType: 'List<PhosphorIconData>',
            name: 'icons',
            body: 'allFlatIconsAsMap.values.toList()',
          ),
          buildGetterMethod(
            returnType: 'List<String>',
            name: 'names',
            body: 'allFlatIconsAsMap.keys.toList()',
          ),
          buildGetterMethod(
            returnType: 'Map<String, PhosphorIconData>',
            name: 'allFlatIconsAsMap',
            body: '''{
      ...regularIcons,
      ...thinIcons,
      ...lightIcons,
      ...boldIcons,
      ...fillIcons,
      ...duotoneIcons,
      }''',
          ),
          for (final entry in stylesMaps.entries)
            buildIconsMapGetterByStyle(
              style: entry.key,
              lines: entry.value,
            ),
        ],
      ),
  );

  final allFilesLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.add(
        Directive.import(
          'package:phosphor_flutter/phosphor_flutter.dart',
        ),
      )
      ..body.add(allIconsClass),
  );

  final emitter = DartEmitter();
  final generatedFileContent = DartFormatter().format(
    '${allFilesLib.accept(emitter)}',
  );

  saveContentToFile(
    filePath: '../example/lib/constants/all_icons.dart',
    content: generatedFileContent,
  );
}

/// Returns a lambda getter method
///
/// for example, running:
///
/// ```dart
/// final method = buildGetterMethod(
///   returnType: 'String',
///   name: 'something',
///   body: "'some text'",
/// );
/// ```
///
/// will give
///
/// ```dart
/// String get something => 'some text'
/// ```
Method buildGetterMethod({
  required String returnType,
  required String name,
  required String body,
}) {
  return Method(
    (methodBuilder) => methodBuilder
      ..static = true
      ..returns = Reference(returnType)
      ..type = MethodType.getter
      ..name = name
      ..lambda = true
      ..body = Code(body),
  );
}

Method buildIconsMapGetterByStyle({
  required StyleFileData style,
  required List<String> lines,
}) =>
    buildGetterMethod(
      returnType: 'Map<String, PhosphorIconData>',
      name: '${style.styleName}Icons',
      body: '{${lines.join(',')}}',
    );
