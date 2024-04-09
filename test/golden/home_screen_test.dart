import 'package:flutter_golden_tester/screens/home_screen.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('HomeScreen Test', (tester) async {
    // Args
    // print('Color --> ${const String.fromEnvironment('color')}');
    // print('Text --> ${const String.fromEnvironment('text')}');
    // print('Alignment --> ${const String.fromEnvironment('alignment')}');

    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..addScenario(
        name: 'Golden Comparation Test',
        widget: const HomeScreen(
          text: String.fromEnvironment('text'),
          hexColor: String.fromEnvironment('color'),
          iconAlignment: String.fromEnvironment('alignment'),
        ),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'Home Screen');
  });
}
