import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(50, 65, 112, .1),
  100: const Color.fromRGBO(50, 65, 112, .2),
  200: const Color.fromRGBO(50, 65, 112, .3),
  300: const Color.fromRGBO(50, 65, 112, .4),
  400: const Color.fromRGBO(50, 65, 112, .5),
  500: const Color.fromRGBO(50, 65, 112, .6),
  600: const Color.fromRGBO(50, 65, 112, .7),
  700: const Color.fromRGBO(50, 65, 112, .8),
  800: const Color.fromRGBO(50, 65, 112, .9),
  900: const Color.fromRGBO(50, 65, 112, 1),
};

abstract class CustomColors {
  static Color customErrorColor = MaterialColor(0xFFD36868, _swatchOpacity);
  static MaterialColor customSwatchColor = MaterialColor(0xFF324170, _swatchOpacity);
  static MaterialColor customSecondaryColor = MaterialColor(0xFF11999E, _swatchOpacity);
}
