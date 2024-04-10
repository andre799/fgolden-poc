import 'package:flutter/material.dart';

abstract class DataUtils {
  static Color? colorFromHex(String? hex) {
    final code = hex;

    if (code == null || code.isEmpty) {
      return null;
    }

    try {
      int hexValue = int.parse('FF${code.replaceAll('#', '')}', radix: 16);
      return Color(hexValue);
    } catch (e) {
      return null;
    }
  }

  static Alignment alignmentFromString(String? alignment) {
    switch (alignment?.toLowerCase()) {
      case 'center':
        return Alignment.center;
      case 'topleft':
        return Alignment.topLeft;
      case 'topright':
        return Alignment.topRight;
      case 'bottomleft':
        return Alignment.bottomLeft;
      case 'bottomright':
        return Alignment.bottomRight;
      case 'topcenter':
        return Alignment.topCenter;
      case 'bottomcenter':
        return Alignment.bottomCenter;
      case 'centerleft':
        return Alignment.centerLeft;
      case 'centerright':
        return Alignment.centerRight;
      default:
        return Alignment.center;
    }
  }
}
