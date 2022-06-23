import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor orange = MaterialColor(
    0xffef3e23, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffffe0e0),//10%
      100: Color(0xffcb574e),//20%
      200: Color(0xffef3e23),//30%
      300: Color(0xffef3e23),//40%
      400: Color(0xf0ef3e23),//50%
      500: Color(0xffef3e23),//60%
      600: Color(0xffef3e23),//70%
      700: Color(0xffef3e23),//80%
      800: Color(0xffef3e23),//90%
      900: Color(0xffef3e23),//100%
    },
  );

  static const MaterialColor lightOrange = MaterialColor(
    0xffef6b51, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffef6b51),//10%
      100: Color(0xffef3e23),//20%
      200: Color(0xffef3e23),//30%
      300: Color(0xffef3e23),//40%
      400: Color(0xf0ef3e23),//50%
      500: Color(0xffef3e23),//60%
      600: Color(0xffef3e23),//70%
      700: Color(0xffef3e23),//80%
      800: Color(0xffef3e23),//90%
      900: Color(0xffef3e23),//100%
    },
  );

  static const MaterialColor green = MaterialColor(
    0xff4caf50, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffce5641 ),//10%
      100: Color(0xffb74c3a),//20%
      200: Color(0xffa04332),//30%
      300: Color(0xff89392b),//40%
      400: Color(0xff733024),//50%
      500: Color(0xff5c261d),//60%
      600: Color(0xff451c16),//70%
      700: Color(0xff2e130e),//80%
      800: Color(0xff170907),//90%
      900: Color(0xff000000),//100%
    },
  );

  static const MaterialColor darkBlue = MaterialColor(
    0xff193746, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffce5641 ),//10%
      100: Color(0xffb74c3a),//20%
      200: Color(0xffa04332),//30%
      300: Color(0xff89392b),//40%
      400: Color(0xff733024),//50%
      500: Color(0xff5c261d),//60%
      600: Color(0xff451c16),//70%
      700: Color(0xff2e130e),//80%
      800: Color(0xff170907),//90%
      900: Color(0xff000000),//100%
    },
  );
}