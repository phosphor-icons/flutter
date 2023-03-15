import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'utils.dart';

const styles = {
  'bold',
  'fill',
  'light',
  'thin',
  // 'duotone',
  'regular',
};

/// Phosphor Icons generator
/// reads the phosphor json and generates a dart class
/// with all the phosphor icons constants
void generateExampleAppConstants(List icons) {
  print('Generating example app all_icons.dart file');

  final mapBoldGetterBody = <String>[];

  final mapFillGetterBody = <String>[];

  final mapLightGetterBody = <String>[];

  final mapRegularGetterBody = <String>[];

  final mapThinGetterBody = <String>[];

  icons.forEach((icon) {
    final properties = icon['properties'] as Map<String, dynamic>;
    final fullName = properties['name'] as String;
    for (var style in styles) {
      final name = formatName(fullName, style: 'regular');

      switch (style) {
        case 'bold':
          mapBoldGetterBody.add("'$fullName': PhosphorIcons.$style.$name,");
          break;
        case 'fill':
          mapFillGetterBody.add("'$fullName': PhosphorIcons.$style.$name,");
          break;
        case 'light':
          mapLightGetterBody.add("'$fullName': PhosphorIcons.$style.$name,");
          break;
        case 'thin':
          mapThinGetterBody.add("'$fullName': PhosphorIcons.$style.$name,");
          break;
        case 'regular':
        default:
          mapRegularGetterBody.add("'$fullName': PhosphorIcons.$style.$name,");
          break;
      }
    }
  });

  mapBoldGetterBody.sort();
  mapFillGetterBody.sort();
  mapLightGetterBody.sort();
  mapRegularGetterBody.sort();
  mapThinGetterBody.sort();

  final allIconsClass = Class(
    (classBuilder) => classBuilder
      ..abstract = true
      ..name = 'AllIcons'
      ..methods.addAll(
        [
          buildMethod(
            returnType: 'List<PhosphorIconData>',
            name: 'icons',
            body: 'allIconsAsMap.values.toList()',
          ),
          buildMethod(
            returnType: 'List<String>',
            name: 'names',
            body: 'allIconsAsMap.keys.toList()',
          ),
          buildMethod(
            name: 'allIconsAsMap',
            body: '''{
      ...boldIcons,
      ...fillIcons,
      ...lightIcons,
      ...regularIcons,
      ...thinIcons,}''',
          ),
          buildMethod(
            name: 'boldIcons',
            body: '{${mapBoldGetterBody.join()}}',
          ),
          buildMethod(
            name: 'fillIcons',
            body: '{${mapFillGetterBody.join()}}',
          ),
          buildMethod(
            name: 'lightIcons',
            body: '{${mapLightGetterBody.join()}}',
          ),
          buildMethod(
            name: 'regularIcons',
            body: '{${mapRegularGetterBody.join()}}',
          ),
          buildMethod(
            name: 'thinIcons',
            body: '{${mapThinGetterBody.join()}}',
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
