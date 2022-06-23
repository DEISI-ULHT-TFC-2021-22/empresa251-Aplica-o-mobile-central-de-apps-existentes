class Months {
  static int? month = 1;
  static DateTime date = DateTime.parse('1969-07-20');

  static const Map<int, int> days = {
    1: 31, //Janeiro
    2: 29,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31, //Dezembro
  };

  static const List<String> months = [
    "Janeiro", //Janeiro
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro",
  ];

  static const Map<int, String> dayOfMonth = {
    01: "Janeiro",
    02: "Fevereiro",
    03: "Março",
    04: "Abril",
    05: "Maio",
    06: "Junho",
    07: "Julho",
    08: "Agosto",
    09: "Setembro",
    10: "Outubro",
    11: "Novembro",
    12: "Dezembro"
  };
}
