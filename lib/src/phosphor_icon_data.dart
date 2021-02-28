library phosphor_flutter;

import 'package:flutter/widgets.dart';

class PhosphorIconData extends IconData {
  const PhosphorIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'Phosphor',
          fontPackage: 'phosphor_flutter',
        );
}
