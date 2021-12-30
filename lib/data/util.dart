class Util {
  static int getFormatTime(DateTime date) {
    // date.month 7월 => 07(x) 7(o)
    // 이것을 맞추기 위해 makeTwoDigit 을 사용
    return int.parse("${date.year}${makeTwoDigit(date.month)}${date.day}");
  }

  static DateTime numToDateTime(int date) {
    String _d = date.toString();
    int year = int.parse(_d.substring(0, 4));
    int month = int.parse(_d.substring(4, 2));
    int day = int.parse(_d.substring(6, 2));
    return DateTime(year, month, day);
  }

  static String makeTwoDigit(int num) {
    //두자리 공간을 마련하고 빈공간은 0으로 채운다
    //  2 => 02
    // 10 => 10
    return num.toString().padLeft(2, "0");
  }
}
