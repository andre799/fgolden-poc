import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? colorFromHex;

  const CustomContainer({super.key, required this.colorFromHex});

  Color? get invertedColor {
    if (colorFromHex == null) return null;

    return Color.fromARGB(
      colorFromHex!.alpha,
      255 - colorFromHex!.red,
      255 - colorFromHex!.green,
      255 - colorFromHex!.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: colorFromHex, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.all(32),
          decoration: BoxDecoration(color: invertedColor, borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
