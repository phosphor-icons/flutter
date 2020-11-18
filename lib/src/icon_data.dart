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

class PhosphorIconDataRegular extends PhosphorIconData {
  const PhosphorIconDataRegular(int codePoint)
      : super(
          codePoint,
        );
}

class PhosphorIconDataThin extends PhosphorIconData {
  const PhosphorIconDataThin(int codePoint)
      : super(
          codePoint,
        );
}

class PhosphorIconDataLight extends PhosphorIconData {
  const PhosphorIconDataLight(int codePoint)
      : super(
          codePoint,
        );
}

class PhosphorIconDataBold extends PhosphorIconData {
  const PhosphorIconDataBold(int codePoint)
      : super(
          codePoint,
        );
}

class PhosphorIconDataFill extends PhosphorIconData {
  const PhosphorIconDataFill(int codePoint)
      : super(
          codePoint,
        );
}
