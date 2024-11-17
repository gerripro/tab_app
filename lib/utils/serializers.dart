abstract class Serializers {
  static String? getColorStr(String? color) {
    if (color == null) return null;
    return "0xFF$color";
  }
}