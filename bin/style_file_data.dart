import 'extensions.dart';

enum StyleFileData {
  regular(
    styleName: 'regular',
    fontFileName: 'Phosphor.ttf',
    idx: 0,
  ),

  thin(
    styleName: 'thin',
    fontFileName: 'Phosphor-Thin.ttf',
    idx: 1,
  ),

  light(
    styleName: 'light',
    fontFileName: 'Phosphor-Light.ttf',
    idx: 2,
  ),

  bold(
    styleName: 'bold',
    fontFileName: 'Phosphor-Bold.ttf',
    idx: 3,
  ),

  fill(
    styleName: 'fill',
    fontFileName: 'Phosphor-Fill.ttf',
    idx: 4,
  ),

  duotone(
    styleName: 'duotone',
    fontFileName: 'Phosphor-Duotone.ttf',
    idx: 5,
  );

  const StyleFileData({
    required this.styleName,
    required this.fontFileName,
    required this.idx,
  });

  final String styleName;
  final String fontFileName;
  final int idx;

  String get directoryName => styleName;
  String get docsLine => '/// ${styleName.capitalize()} Icons';
  String get className => 'PhosphorIcons${styleName.capitalize()}';
  String get classFileName => 'phosphor_icons_$styleName.dart';
  String get classConstructorLine => '$className()';
}

// all styles excluding duotone because it needs a different treatment
final flatStylesData = StyleFileData.values
    .where((style) => style != StyleFileData.duotone)
    .toList();
