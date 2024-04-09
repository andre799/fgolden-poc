import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String? text;
  final String? hexColor;
  final String? iconAlignment;

  const HomeScreen({super.key, required this.text, required this.hexColor, required this.iconAlignment});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color? get colorFromHex {
    final code = widget.hexColor;

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

  Alignment get alignment {
    switch (widget.iconAlignment?.toLowerCase()) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Golden Tester'),
        backgroundColor: colorFromHex,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: colorFromHex, borderRadius: BorderRadius.circular(8)),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    widget.text ?? 'Empty...',
                    style: const TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: alignment,
                  child: const FlutterLogo(
                    size: 70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
