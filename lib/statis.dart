class Static {
  static const fullPadding = 16.0;
  static const fullPaddingX2 = 32.0;
  static const halfPadding = 8.0;
  static const padding4 = 8.0;
  static const defaultFontSize = 16.0;

  static const text_xs = 0.75 * defaultFontSize;
  static const text_sm = 0.875 * defaultFontSize;
  static const text_base = 1 * defaultFontSize;
  static const text_lg = 1.125 * defaultFontSize;
  static const text_xl = 1.25 * defaultFontSize;
  static const text_2xl = 1.5 * defaultFontSize;
  static const text_3xl = 1.875 * defaultFontSize;
  static const text_4xl = 2.25 * defaultFontSize;
  static const text_5xl = 3 * defaultFontSize;
  static const text_6xl = 3.75 * defaultFontSize;
  static const text_7xl = 4.5 * defaultFontSize;
  static const text_8xl = 6 * defaultFontSize;
  static const text_9xl = 8 * defaultFontSize;

  static double paddingCalculate(double i) {
    return i * 0.25;
  }

  static final p_0 = paddingCalculate(0);
}
