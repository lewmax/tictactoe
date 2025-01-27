abstract class StringParser {
  static double versionDoubleFromString(String versionStr) {
    final strArray = versionStr.split('.');
    final val = '${strArray[0]}.${strArray.getRange(1, strArray.length).join()}';

    return double.tryParse(val) ?? 0;
  }
}
