/// Format the icon name in camelCase
String formatName(String name) {
  final splitName = name.toLowerCase().split('-');
  return splitName
      .map((word) {
        if (splitName.indexOf(word) == 0) return word;
        return word.replaceFirst(word[0], word[0].toUpperCase());
      })
      .toList()
      .join();
}

/// Save the styles of the icons in a map passed
void saveStyles(Map<String, List<String>> iconsStylesMap, String fullName) {
  var style = 'regular';
  var fullNameAsList = fullName.toLowerCase().split('-');
  if (fullName.contains(RegExp(r'(?<=-)(fill|bold|thin|light)$'))) {
    style = fullNameAsList.removeLast();
  }
  var baseName = fullNameAsList.join('-');
  iconsStylesMap[baseName] ??= [];
  iconsStylesMap[baseName].add(style);
}

/// Checks if all the icons in the map has his five styles
void checkStyles(Map<String, List<String>> iconsMap) {
  for (var iconStyles in iconsMap.entries) {
    if (iconStyles.value.length < 5)
      throw Exception(
        '''
Icon [${iconStyles.key}] has missing styles
Found ${iconStyles.value}
Should be ${['regular', 'fill', 'bold', 'thin', 'light']}
''',
      );
  }
}
