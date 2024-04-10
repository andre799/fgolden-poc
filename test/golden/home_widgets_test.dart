import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_golden_tester/utils/data_utils.dart';
import 'package:flutter_golden_tester/widgets/custom_container.dart';
import 'package:flutter_golden_tester/widgets/custom_icon.dart';
import 'package:flutter_golden_tester/widgets/custom_text.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('Widgets Test', (tester) async {
    const color = String.fromEnvironment('color', defaultValue: '#fece23');
    const text = String.fromEnvironment('text', defaultValue: 'Golden Tests, wow!');
    const alignment = String.fromEnvironment('alignment', defaultValue: 'center');

    const double width = 300;
    const double height = 150;

    //arrange
    await loadAppFonts();
    final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
      ..addScenario(
        '1º Widget Test: Container',
        SizedBox(
          width: width,
          height: height,
          child: CustomContainer(
            colorFromHex: DataUtils.colorFromHex(color),
          ),
        ),
      )
      ..addScenario(
        '2º Widget Test: Text',
        const SizedBox(
          width: width,
          height: height,
          child: CustomText(
            text: text,
          ),
        ),
      )
      ..addScenario(
        '3º Widget Test: Icon',
        SizedBox(
          width: width,
          height: height,
          child: CustomIcon(
            alignment: DataUtils.alignmentFromString(alignment),
          ),
        ),
      );

    //act
    await tester.pumpWidgetBuilder(builder.build());

    //assert
    await screenMatchesGolden(tester, 'Widgets');
  });
}
