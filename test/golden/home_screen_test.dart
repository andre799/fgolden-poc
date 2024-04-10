import 'package:flutter_golden_tester/screens/home_screen.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('HomeScreen Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..addScenario(
        name: 'Screen Golden Test',
        widget: const HomeScreen(
          text: String.fromEnvironment('text', defaultValue: 'Golden Tests, wow!'),
          hexColor: String.fromEnvironment('color', defaultValue: '#fece23'),
          iconAlignment: String.fromEnvironment('alignment', defaultValue: 'center'),
        ),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'Home Screen');
  });
}
