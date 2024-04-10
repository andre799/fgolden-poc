import 'package:flutter/material.dart';
import 'package:flutter_golden_tester/utils/data_utils.dart';
import 'package:flutter_golden_tester/widgets/custom_container.dart';
import 'package:flutter_golden_tester/widgets/custom_icon.dart';
import 'package:flutter_golden_tester/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  final String? text;
  final String? hexColor;
  final String? iconAlignment;

  const HomeScreen({super.key, required this.text, required this.hexColor, required this.iconAlignment});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Golden Tester'),
        backgroundColor: DataUtils.colorFromHex(widget.hexColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: CustomContainer(colorFromHex: DataUtils.colorFromHex(widget.hexColor)),
            ),
            Expanded(
              child: Center(
                child: CustomText(
                  text: widget.text,
                ),
              ),
            ),
            Expanded(
              child: CustomIcon(alignment: DataUtils.alignmentFromString(widget.iconAlignment)),
            ),
          ],
        ),
      ),
    );
  }
}
