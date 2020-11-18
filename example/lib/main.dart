import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IconsCatalog(),
    );
  }
}

class IconsCatalog extends StatefulWidget {
  IconsCatalog({Key key}) : super(key: key);

  @override
  _IconsCatalogState createState() => _IconsCatalogState();
}

class _IconsCatalogState extends State<IconsCatalog> {
  dynamic _icons;
  List<String> _iconsNames;
  String _title = 'Icons Catalog - Regular';
  bool _isDuotone = false;

  @override
  void initState() {
    _icons = PhosphorIcons.regularIcons.values.toList();
    _iconsNames = PhosphorIcons.regularIcons.keys.toList();
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
            decoration: BoxDecoration(
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
        backgroundColor: Color(0xff35313d),
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Style',
            icon: Icon(PhosphorIcons.pencilLine),
            itemBuilder: (context) {
              return {
                'Thin',
                'Light',
                'Regular',
                'Bold',
                'Fill',
                'Duotone',
              }.map((style) {
                var icon;

                switch (style) {
                  case 'Bold':
                    icon = PhosphorIcons.pencilLineBold;
                    break;
                  case 'Fill':
                    icon = PhosphorIcons.pencilLineFill;
                    break;
                  case 'Light':
                    icon = PhosphorIcons.pencilLineLight;
                    break;
                  case 'Thin':
                    icon = PhosphorIcons.pencilLineThin;
                    break;
                  case 'Regular':
                  case 'Duotone':
                  default:
                    icon = PhosphorIcons.pencilLine;
                    break;
                }

                return PopupMenuItem<String>(
                  child: Row(
                    children: [
                      if (style == 'Duotone')
                        PhosphorIconDuotone(
                          icon: icon,
                        )
                      else
                        Icon(
                          icon,
                          color: Colors.black,
                        ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(style),
                    ],
                  ),
                  value: style,
                );
              }).toList();
            },
            onSelected: (value) {
              var icons;
              var iconsNames;

              switch (value) {
                case 'Bold':
                  icons = PhosphorIcons.boldIcons.values.toList();
                  iconsNames = PhosphorIcons.boldIcons.keys.toList();
                  break;
                case 'Fill':
                  icons = PhosphorIcons.fillIcons.values.toList();
                  iconsNames = PhosphorIcons.fillIcons.keys.toList();
                  break;
                case 'Light':
                  icons = PhosphorIcons.lightIcons.values.toList();
                  iconsNames = PhosphorIcons.lightIcons.keys.toList();
                  break;
                case 'Thin':
                  icons = PhosphorIcons.thinIcons.values.toList();
                  iconsNames = PhosphorIcons.thinIcons.keys.toList();
                  break;
                case 'Duotone':
                case 'Regular':
                default:
                  icons = PhosphorIcons.regularIcons.values.toList();
                  iconsNames = PhosphorIcons.regularIcons.keys.toList();
                  break;
              }

              setState(() {
                _icons = icons;
                _iconsNames = iconsNames;
                _title = 'Icons Catalog - $value';
                _isDuotone = value == 'Duotone';
              });
            },
          ),
        ],
      ),
      body: GridView.builder(
        shrinkWrap: true,
        primary: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                if (_isDuotone)
                  PhosphorIconDuotone(
                    icon: _icons[index],
                    size: 48,
                  )
                else
                  Icon(
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
