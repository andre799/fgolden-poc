import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  const CustomText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(8)),
      child: Text(
        text ?? 'Empty...',
        style: const TextStyle(fontSize: 20),
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
    );
  }
}
