import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shade_theming/main.dart';
import 'package:shade_theming/shade_theming.dart';

@Deprecated("ShadeTheming is deprecated, use ShadeUI 2.x instead.")
int                 SHUI_THEME_GET(BuildContext bc)               => bc.watch<ShadeThemeProvider>().getTheme();
@Deprecated("ShadeTheming is deprecated, use ShadeUI 2.x instead.")
void                SHUI_THEME_SET(BuildContext bc, int theme)    => bc.watch<ShadeThemeProvider>().setTheme(theme);
@Deprecated("ShadeTheming is deprecated, use ShadeUI 2.x instead.")
ThemeProperties     SHUI_THEME_PROPERTIES(BuildContext bc)        => bc.watch<ShadeThemeProvider>().getCurrentThemeProperties();