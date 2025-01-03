import 'package:flutter/material.dart';
import '/resources/themes/styles/color_styles.dart';

/* Light Theme Colors
|-------------------------------------------------------------------------- */

class LightThemeColors implements ColorStyles {
  // general
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get content => const Color(0xFF000000);
  @override
  Color get primaryAccent => const Color(0xFF0045a0);

  @override
  Color get surfaceBackground => Colors.white;
  @override
  Color get surfaceContent => Colors.black;

  // app bar
  @override
  Color get appBarBackground => Colors.blue;
  @override
  Color get appBarPrimaryContent => Colors.white;

  // buttons
  @override
  Color get buttonBackground => Colors.blue;
  @override
  Color get buttonContent => Colors.white;

  @override
  Color get buttonSecondaryBackground => const Color(0xff151925);
  @override
  Color get buttonSecondaryContent =>
      Colors.white.withAlpha((255.0 * 0.9).round());

  // bottom tab bar
  @override
  Color get bottomTabBarBackground => Colors.white;

  // bottom tab bar - icons
  @override
  Color get bottomTabBarIconSelected => Colors.blue;
  @override
  Color get bottomTabBarIconUnselected => Colors.black54;

  // bottom tab bar - label
  @override
  Color get bottomTabBarLabelUnselected => Colors.black45;
  @override
  Color get bottomTabBarLabelSelected => Colors.black;

  // toast notification
  @override
  Color get toastNotificationBackground => Colors.white;

  @override
  Color get primary => const Color(0xFF696CFF);
  @override
  Color get secondary => const Color(0xFF8592A3);
  @override
  Color get success => const Color(0xFF71DD37);
  @override
  Color get info => const Color(0xFF03C3EC);
  @override
  Color get warning => const Color(0xFFFFAB00);
  @override
  Color get danger => const Color(0xFFFF3E1D);
  @override
  Color get blue => const Color(0xFF007BFF); 
  @override
  Color get indigo => const Color(0xFF6610F2); 
  @override
  Color get purple => const Color(0xFF696CFF); 
  @override
  Color get pink => const Color(0xFFE83E8C); 
  @override
  Color get red => const Color(0xFFFF3E1D); 
  @override
  Color get orange => const Color(0xFFFD7E14); 
  @override
  Color get yellow => const Color(0xFFFFAB00); 
  @override
  Color get green => const Color(0xFF71DD37); 
  @override
  Color get teal => const Color(0xFF20C997); 
  @override
  Color get cyan => const Color(0xFF03C3EC); 
  @override
  Color get black => const Color(0xFF22303E); 
  @override
  Color get white => const Color(0xFFFFFFFF); 
  @override
  Color get light => const Color(0xFFDBDEE0);
  @override
  Color get dark => const Color(0xFF2B2C40);
  @override
  Color get gray => const Color.fromRGBO(34, 48, 62, 0.5);

}
