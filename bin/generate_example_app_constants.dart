import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'style_file_data.dart';
import 'utils.dart';

/// reads a list of icons graphs and generates a dart class
/// with all the phosphor icons constants from the generated files
void generateExampleAppConstants(List icons) {
  print('Generating example app all_icons.dart file');

  final mapBoldGetterBody = <String>[];

  final mapFillGetterBody = <String>[];

  final mapLightGetterBody = <String>[];

  final mapRegularGetterBody = <String>[];

  final mapThinGetterBody = <String>[];

  final mapDuotoneGetterBody = <String>[];

  icons.forEach((icon) {
    final properties = icon['properties'] as Map<String, dynamic>;
    final fullName = properties['name'] as String;
    for (final style in StyleFileData.values) {
      final name = formatName(fullName, style: 'regular');
      final mapEntryLine =
          "'$fullName': PhosphorIcons.${style.styleName}.$name";

      switch (style) {
        case StyleFileData.bold:
          mapBoldGetterBody.add(mapEntryLine);
          break;
        case StyleFileData.fill:
          mapFillGetterBody.add(mapEntryLine);
          break;
        case StyleFileData.light:
          mapLightGetterBody.add(mapEntryLine);
          break;
        case StyleFileData.thin:
          mapThinGetterBody.add(mapEntryLine);
          break;
        case StyleFileData.regular:
          mapRegularGetterBody.add(mapEntryLine);
          break;
        case StyleFileData.duotone:
          mapDuotoneGetterBody.add(mapEntryLine);
          break;
      }
    }
  });

  mapBoldGetterBody.sort();
  mapFillGetterBody.sort();
  mapLightGetterBody.sort();
  mapRegularGetterBody.sort();
  mapThinGetterBody.sort();
  mapDuotoneGetterBody.sort();

  final allIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = true
      ..name = 'AllIcons'
      ..methods.addAll(
        [
          buildMethod(
            returnType: 'List<PhosphorIconData>',
            name: 'icons',
            body: 'allFlatIconsAsMap.values.toList()',
          ),
          buildMethod(
            returnType: 'List<String>',
            name: 'names',
            body: 'allFlatIconsAsMap.keys.toList()',
          ),
          buildMethod(
            name: 'allFlatIconsAsMap',
            body: '''{
      ...boldIcons,
      ...fillIcons,
      ...lightIcons,
      ...regularIcons,
      ...thinIcons,}''',
          ),
          buildMethod(
            name: 'boldIcons',
            body: '{${mapBoldGetterBody.join(',')}}',
          ),
          buildMethod(
            name: 'fillIcons',
            body: '{${mapFillGetterBody.join(',')}}',
          ),
          buildMethod(
            name: 'lightIcons',
            body: '{${mapLightGetterBody.join(',')}}',
          ),
          buildMethod(
            name: 'regularIcons',
            body: '{${mapRegularGetterBody.join(',')}}',
          ),
          buildMethod(
            name: 'thinIcons',
            body: '{${mapThinGetterBody.join(',')}}',
          ),
          buildMethod(
            name: 'duotoneIcons',
            returnType: 'Map<String, Widget>',
            body: '{${mapDuotoneGetterBody.join(',')}}',
          ),
        ],
      ),
  );

  final allFilesLib = Library(
    (libraryBuilder) => libraryBuilder
      ..directives.addAll([
        Directive.import(
          'package:flutter/widgets.dart',
        ),
        Directive.import(
          'package:phosphor_flutter/phosphor_flutter.dart',
        ),
      ])
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

/// Returns a getter method and defaults to return a
/// Map<String, PhosphorIconData>
///
/// for example, if no [returnType] is passed, [name] is `'bold'` and
/// [body] is `{pencil: PhosphorIcons.bold.pencil,}` then this will be the
/// result
///
/// ```dart
/// Map<String, PhosphorIconData> get bold => {
///   pencil: PhosphorIcons.bold.pencil,
/// }
/// ```
Method buildMethod({
  String returnType = 'Map<String, PhosphorIconData>',
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
