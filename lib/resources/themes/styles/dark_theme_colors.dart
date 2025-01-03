import 'package:flutter/material.dart';
import '/resources/themes/styles/color_styles.dart';

/* Dark Theme Colors
|-------------------------------------------------------------------------- */

class DarkThemeColors implements ColorStyles {
  // general
  @override
  Color get background => const Color(0xff161c20);

  @override
  Color get content => const Color(0xFFE1E1E1);
  @override
  Color get primaryAccent => const Color(0xffa0baff);

  @override
  Color get surfaceBackground => Colors.white70;
  @override
  Color get surfaceContent => Colors.black;

  // app bar
  @override
  Color get appBarBackground => const Color(0xff2a343c);
  @override
  Color get appBarPrimaryContent => Colors.white;

  // buttons
  @override
  Color get buttonBackground => const Color(0xffd8d8d8);
  @override
  Color get buttonContent => Colors.black87;

  @override
  Color get buttonSecondaryBackground => Colors.grey.shade800;
  @override
  Color get buttonSecondaryContent => Colors.white70;

  // bottom tab bar
  @override
  Color get bottomTabBarBackground => const Color(0xFF232c33);

  // bottom tab bar - icons
  @override
  Color get bottomTabBarIconSelected => Colors.white70;
  @override
  Color get bottomTabBarIconUnselected => Colors.white60;

  // bottom tab bar - label
  @override
  Color get bottomTabBarLabelUnselected => Colors.white54;
  @override
  Color get bottomTabBarLabelSelected => Colors.white;

  // toast notification
  @override
  Color get toastNotificationBackground => const Color(0xff3e4447);

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
  Color get black => const Color(0xFF393A5A);
  @override
  Color get white => const Color(0xFFFFFFFF);
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
  Color get light => const Color(0xFF494A5D);
  @override
  Color get dark => const Color(0xFF6B6C9D);
  @override
  Color get gray =>const Color.fromRGBO(230, 230, 241, 0.5);

}
