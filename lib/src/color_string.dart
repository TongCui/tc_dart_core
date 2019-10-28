class Colorize {
  Colorize(Object object, this.colorStyle) : content = object.toString();

  final String content;
  final ColorStyle colorStyle;

  @override
  String toString() {
    return '\u{1B}[${colorStyle.startCode}m${content.toString()}\u{1B}[${colorStyle.endCode}m';
  }
}

class ColorStyle {
  const ColorStyle(this.startCode, this.endCode);

  final int startCode, endCode;


  static const ColorStyle black = ColorStyle(30, 0);
  static const ColorStyle red = ColorStyle(31, 0);
  static const ColorStyle green = ColorStyle(32, 0);
  static const ColorStyle yellow = ColorStyle(33, 0);
  static const ColorStyle blue = ColorStyle(34, 0);
  static const ColorStyle pink = ColorStyle(35, 0);
  static const ColorStyle cyan = ColorStyle(36, 0);
  static const ColorStyle gray = ColorStyle(37, 0);

  static const ColorStyle blackBg = ColorStyle(40, 0);
  static const ColorStyle redBg = ColorStyle(41, 0);
  static const ColorStyle greenBg = ColorStyle(42, 0);
  static const ColorStyle yellowBg = ColorStyle(43, 0);
  static const ColorStyle blueBg = ColorStyle(44, 0);
  static const ColorStyle pinkBg = ColorStyle(45, 0);
  static const ColorStyle cyanBg = ColorStyle(46, 0);
  static const ColorStyle grayBg = ColorStyle(47, 0);

  @override
  String toString() {
    return 'ColorStyle($startCode, $endCode)';
  }
}

class ColorStr {
  static String black(Object msg) =>
      Colorize(msg, ColorStyle.black).toString();
  static String red(Object msg) =>
      Colorize(msg, ColorStyle.red).toString();
  static String green(Object msg) =>
      Colorize(msg, ColorStyle.green).toString();
  static String yellow(Object msg) =>
      Colorize(msg, ColorStyle.yellow).toString();
  static String blue(Object msg) =>
      Colorize(msg, ColorStyle.blue).toString();
  static String pink(Object msg) =>
      Colorize(msg, ColorStyle.pink).toString();
  static String cyan(Object msg) =>
      Colorize(msg, ColorStyle.cyan).toString();
  static String gray(Object msg) =>
      Colorize(msg, ColorStyle.gray).toString();

  static String blackBg(Object msg) =>
      Colorize(msg, ColorStyle.blackBg).toString();
  static String redBg(Object msg) =>
      Colorize(msg, ColorStyle.redBg).toString();
  static String greenBg(Object msg) =>
      Colorize(msg, ColorStyle.greenBg).toString();
  static String yellowBg(Object msg) =>
      Colorize(msg, ColorStyle.yellowBg).toString();
  static String blueBg(Object msg) =>
      Colorize(msg, ColorStyle.blueBg).toString();
  static String pinkBg(Object msg) =>
      Colorize(msg, ColorStyle.pinkBg).toString();
  static String cyanBg(Object msg) =>
      Colorize(msg, ColorStyle.cyanBg).toString();
  static String grayBg(Object msg) =>
      Colorize(msg, ColorStyle.grayBg).toString();
}
