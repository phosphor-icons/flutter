library phosphor_flutter;

import 'package:flutter/widgets.dart';

/// Phosphor icons are plain [IconData] instances.
///
/// Historically this package subclassed [IconData] (`PhosphorIconData extends
/// IconData`), but Flutter 3.44 marked [IconData] a `final class`
/// (https://github.com/flutter/flutter/issues/181342), so subclassing is no
/// longer permitted. The generated style classes now emit `IconData(...)`
/// directly; these typedefs preserve the public type names for backward
/// compatibility (e.g. the `PhosphorIcons.foo(style)` return type).
typedef PhosphorIconData = IconData;
typedef PhosphorFlatIconData = IconData;
typedef PhosphorDuotoneIconData = IconData;
