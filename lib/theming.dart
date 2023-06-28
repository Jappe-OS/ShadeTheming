//  ShadeTheming, A simple theming system for shade_ui.
//  Copyright (C) 2022  Jappe02
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as
//  published by the Free Software Foundation, either version 3 of the
//  License, or (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';

/// Properties for a theme.
class ThemeProperties {
  const ThemeProperties(this.backgroundColor1, this.backgroundColor2, this.transparentFillColor, this.borderColor, this.accentColor,
      this.normalTextColor, this.darkerTextColor, this.secondaryTextColor, this.invertedTextColor);

  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color transparentFillColor;

  final Color borderColor;

  final Color accentColor;

  final Color normalTextColor;
  final Color darkerTextColor;
  final Color secondaryTextColor;
  final Color invertedTextColor;
}

/// Properties for the dark theme.
class DarkThemeProperties {
  const DarkThemeProperties(this.themeProperties);

  final ThemeProperties themeProperties;

  /// Get default theme properties for the dark theme.
  static DarkThemeProperties getDefault() {
    return DarkThemeProperties(ThemeProperties(
        const Color.fromARGB(255, 30, 30, 30),
        const Color.fromARGB(255, 37, 37, 38),
        const Color.fromARGB(145, 87, 87, 88),
        const Color.fromARGB(80, 243, 243, 243),
        Colors.blueAccent,
        const Color(0xFFFFFFFF).withOpacity(0.9),
        const Color(0xFFFFFFFF),
        const Color(0xFFFFFFFF).withOpacity(0.6),
        const Color(0xFF000000).withOpacity(0.9)));
  }
}

/// Properties for the light theme.
class LightThemeProperties {
  const LightThemeProperties(this.themeProperties);

  final ThemeProperties themeProperties;

  /// Get default theme properties for the light theme.
  static LightThemeProperties getDefault() {
    return LightThemeProperties(ThemeProperties(
        const Color.fromARGB(255, 255, 255, 255),
        const Color.fromARGB(255, 243, 243, 243),
        const Color.fromARGB(145, 243 - 50, 243 - 50, 243 - 50),
        const Color.fromARGB(80, 37, 37, 38),
        Colors.blueAccent,
        const Color(0xFF000000).withOpacity(0.9),
        const Color(0xFF000000),
        const Color(0xFF000000).withOpacity(0.6),
        const Color(0xFFFFFFFF).withOpacity(0.9)));
  }
}
