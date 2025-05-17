import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class PRShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: PRColors.grey.withAlpha(24),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: PRColors.grey.withAlpha(24),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
