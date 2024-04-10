import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Alignment alignment;
  const CustomIcon({super.key, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(8)),
      child: Align(
        alignment: alignment,
        child: const FlutterLogo(
          size: 70,
        ),
      ),
    );
  }
}
