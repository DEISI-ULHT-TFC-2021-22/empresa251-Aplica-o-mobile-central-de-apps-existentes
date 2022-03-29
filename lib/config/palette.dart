import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor orange = MaterialColor(
    0xffef3e23, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: const Color(0xffffe0e0),//10%
      100: const Color(0xfffa948b),//20%
      200: const Color(0xffef3e23),//30%
      300: const Color(0xffef3e23),//40%
      400: const Color(0xf0ef3e23),//50%
      500: const Color(0xffef3e23),//60%
      600: const Color(0xffef3e23),//70%
      700: const Color(0xffef3e23),//80%
      800: const Color(0xffef3e23),//90%
      900: const Color(0xffef3e23),//100%
    },
  );

  static const MaterialColor lightOrange = MaterialColor(
    0xffef6b51, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: const Color(0xffef6b51),//10%
      100: const Color(0xffef3e23),//20%
      200: const Color(0xffef3e23),//30%
      300: const Color(0xffef3e23),//40%
      400: const Color(0xf0ef3e23),//50%
      500: const Color(0xffef3e23),//60%
      600: const Color(0xffef3e23),//70%
      700: const Color(0xffef3e23),//80%
      800: const Color(0xffef3e23),//90%
      900: const Color(0xffef3e23),//100%
    },
  );

  static const MaterialColor green = MaterialColor(
    0xff4caf50, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: const Color(0xffce5641 ),//10%
      100: const Color(0xffb74c3a),//20%
      200: const Color(0xffa04332),//30%
      300: const Color(0xff89392b),//40%
      400: const Color(0xff733024),//50%
      500: const Color(0xff5c261d),//60%
      600: const Color(0xff451c16),//70%
      700: const Color(0xff2e130e),//80%
      800: const Color(0xff170907),//90%
      900: const Color(0xff000000),//100%
    },
  );

  static const MaterialColor darkBlue = MaterialColor(
    0xff193746, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: const Color(0xffce5641 ),//10%
      100: const Color(0xffb74c3a),//20%
      200: const Color(0xffa04332),//30%
      300: const Color(0xff89392b),//40%
      400: const Color(0xff733024),//50%
      500: const Color(0xff5c261d),//60%
      600: const Color(0xff451c16),//70%
      700: const Color(0xff2e130e),//80%
      800: const Color(0xff170907),//90%
      900: const Color(0xff000000),//100%
    },
  );
}