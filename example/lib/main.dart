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
  const IconsCatalog({Key key}) : super(key: key);

  @override
  State<IconsCatalog> createState() => _IconsCatalogState();
}

class _IconsCatalogState extends State<IconsCatalog> {
  dynamic _icons;
  List<String> _iconsNames;
  String _title = 'Icons Catalog - Regular';

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
          PopupMenuButton<String>(
            tooltip: 'Style',
            icon: Icon(PhosphorIcons.pencilLine(PhosphorIconsStyle.regular)),
            itemBuilder: (context) {
              return PhosphorIconsStyle.values.map((style) {
                PhosphorIconData icon = PhosphorIcons.pencilLine(style);

                return PopupMenuItem<String>(
                  value: style.name,
                  child: Row(
                    children: [
                      PhosphorIcon(
                        icon,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 8),
                      Text(style.name),
                    ],
                  ),
                );
              }).toList();
            },
            onSelected: (value) {
              List<PhosphorIconData> icons;
              List<String> iconsNames;

              switch (value) {
                case 'Regular':
                  icons = AllIcons.regularIcons.values.toList();
                  iconsNames = AllIcons.regularIcons.keys.toList();
                  break;
                case 'Thin':
                  icons = AllIcons.thinIcons.values.toList();
                  iconsNames = AllIcons.thinIcons.keys.toList();
                  break;
                case 'Light':
                  icons = AllIcons.lightIcons.values.toList();
                  iconsNames = AllIcons.lightIcons.keys.toList();
                  break;
                case 'Bold':
                  icons = AllIcons.boldIcons.values.toList();
                  iconsNames = AllIcons.boldIcons.keys.toList();
                  break;
                case 'Fill':
                  icons = AllIcons.fillIcons.values.toList();
                  iconsNames = AllIcons.fillIcons.keys.toList();
                  break;
                case 'Duotone':
                  icons = AllIcons.duotoneIcons.values.toList();
                  iconsNames = AllIcons.duotoneIcons.keys.toList();
                  break;
              }

              setState(() {
                _icons = icons;
                _iconsNames = iconsNames;
                _title = 'Icons Catalog - $value';
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
                if (_icons is List<PhosphorIconData>)
                  PhosphorIcon(
                    _icons[index],
                    size: 48,
                  )
                else
                  _icons[index],
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
