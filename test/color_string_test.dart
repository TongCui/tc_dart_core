import 'package:tc_dart_core/src/color_string.dart';
import 'package:test/test.dart';

void main() {
  group('Test Color String', () {
    test('First Test', () {
      final styles = {
        ColorStyle.black: ColorStr.black,
        ColorStyle.red: ColorStr.red,
        ColorStyle.green: ColorStr.green,
        ColorStyle.yellow: ColorStr.yellow,
        ColorStyle.blue: ColorStr.blue,
        ColorStyle.pink: ColorStr.pink,
        ColorStyle.cyan: ColorStr.cyan,
        ColorStyle.gray: ColorStr.gray,
        ColorStyle.redBg: ColorStr.redBg,
        ColorStyle.greenBg: ColorStr.greenBg,
        ColorStyle.yellowBg: ColorStr.yellowBg,
        ColorStyle.blueBg: ColorStr.blueBg,
        ColorStyle.pinkBg: ColorStr.pinkBg,
        ColorStyle.cyanBg: ColorStr.cyanBg,
        ColorStyle.grayBg: ColorStr.grayBg,
      };

      styles.forEach((style, function) {
        const wordings = 'Hello World!';

        expect(
            function(wordings),
            equals(
                '\u{1B}[${style.startCode}m$wordings\u{1B}[${style.endCode}m'));
      });
    });
  });
}
