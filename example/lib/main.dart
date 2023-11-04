import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'constants/all_icons.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Phosphor Icons Demo',
      home: IconsCatalog(),
    );
  }
}

class IconsCatalog extends StatefulWidget {
  const IconsCatalog({super.key});

  @override
  State<IconsCatalog> createState() => _IconsCatalogState();
}

class _IconsCatalogState extends State<IconsCatalog> {
  late List<PhosphorIconData> _icons;
  late List<String> _iconsNames;
  String _title = 'Icons Catalog - regular';

  @override
  void initState() {
    _icons = AllIcons.regularIcons.values.toList();
    _iconsNames = AllIcons.regularIcons.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/phosphor-mark-tight-yellow.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff35313d),
        actions: [
          PopupMenuButton<PhosphorIconsStyle>(
            tooltip: 'Style',
            icon: Icon(PhosphorIcons.pencilLine(PhosphorIconsStyle.regular)),
            itemBuilder: (context) => PhosphorIconsStyle.values
                .map((style) => PopupMenuItem<PhosphorIconsStyle>(
                      value: style,
                      child: Row(
                        children: [
                          PhosphorIcon(
                            PhosphorIcons.pencilLine(style),
                            color: Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(style.name),
                        ],
                      ),
                    ))
                .toList(),
            onSelected: (value) {
              final (icons, names) = switch (value) {
                PhosphorIconsStyle.regular => (
                    AllIcons.regularIcons.values.toList(),
                    AllIcons.regularIcons.keys.toList()
                  ),
                PhosphorIconsStyle.thin => (
                    AllIcons.thinIcons.values.toList(),
                    AllIcons.thinIcons.keys.toList()
                  ),
                PhosphorIconsStyle.light => (
                    AllIcons.lightIcons.values.toList(),
                    AllIcons.lightIcons.keys.toList()
                  ),
                PhosphorIconsStyle.bold => (
                    AllIcons.boldIcons.values.toList(),
                    AllIcons.boldIcons.keys.toList()
                  ),
                PhosphorIconsStyle.fill => (
                    AllIcons.fillIcons.values.toList(),
                    AllIcons.fillIcons.keys.toList()
                  ),
                PhosphorIconsStyle.duotone => (
                    AllIcons.duotoneIcons.values.toList(),
                    AllIcons.duotoneIcons.keys.toList()
                  ),
              };

              setState(() {
                _icons = icons;
                _iconsNames = names;
                _title = 'Icons Catalog - ${value.name}';
              });
            },
          ),
        ],
      ),
      body: GridView.builder(
        shrinkWrap: true,
        primary: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: _icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhosphorIcon(
                  _icons[index],
                  size: 48,
                ),
                Text(
                  _iconsNames[index],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
