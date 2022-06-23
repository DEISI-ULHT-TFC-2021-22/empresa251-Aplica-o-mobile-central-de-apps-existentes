class Timesheet {
  final int d1;
  final int d2;
  final int d3;
  final int d4;
  final int d5;
  final int d6;
  final int d7;
  final int d8;
  final int d9;
  final int d10;
  final int d11;
  final int d12;
  final int d13;
  final int d14;
  final int d15;
  final int d16;
  final int d17;
  final int d18;
  final int d19;
  final int d20;
  final int d21;
  final int d22;
  final int d23;
  final int d24;
  final int d25;
  final int d26;
  final int d27;
  final int d28;
  final int d29;
  final int d30;
  final int d31;


  const Timesheet({
    required this.d1,
    required this.d2,
    required this.d3,
    required this.d4,
    required this.d5,
    required this.d6,
    required this.d7,
    required this.d8,
    required this.d9,
    required this.d10,
    required this.d11,
    required this.d12,
    required this.d13,
    required this.d14,
    required this.d15,
    required this.d16,
    required this.d17,
    required this.d18,
    required this.d19,
    required this.d20,
    required this.d21,
    required this.d22,
    required this.d23,
    required this.d24,
    required this.d25,
    required this.d26,
    required this.d27,
    required this.d28,
    required this.d29,
    required this.d30,
    required this.d31,
  });

  factory Timesheet.fromJson(Map<String, dynamic> json) {
    return Timesheet(
      d1: json['d1'],
      d2: json['d2'],
      d3: json['d3'],
      d4: json['d4'],
      d5: json['d5'],
      d6: json['d6'],
      d7: json['d7'],
      d8: json['d8'],
      d9: json['d9'],
      d10: json['d10'],
      d11: json['d11'],
      d12: json['d12'],
      d13: json['d13'],
      d14: json['d14'],
      d15: json['d15'],
      d16: json['d16'],
      d17: json['d17'],
      d18: json['d18'],
      d19: json['d19'],
      d20: json['d20'],
      d21: json['d21'],
      d22: json['d22'],
      d23: json['d23'],
      d24: json['d24'],
      d25: json['d25'],
      d26: json['d26'],
      d27: json['d27'],
      d28: json['d28'],
      d29: json['d29'],
      d30: json['d30'],
      d31: json['d31'],
    );
  }

  hoursByDay(int day) {
    switch (day) {
      case 1:
        return d1;
      case 2:
        return d2;
      case 3:
        return d3;
      case 4:
        return d4;
      case 5:
        return d5;
      case 6:
        return d6;
      case 7:
        return d7;
      case 8:
        return d8;
      case 9:
        return d9;
      case 10:
        return d10;
      case 11:
        return d11;
      case 12:
        return d12;
      case 13:
        return d13;
      case 14:
        return d14;
      case 15:
        return d15;
      case 16:
        return d16;
      case 17:
        return d17;
      case 18:
        return d18;
      case 19:
        return d19;
      case 20:
        return d20;
      case 21:
        return d21;
      case 22:
        return d22;
      case 23:
        return d23;
      case 24:
        return d24;
      case 25:
        return d25;
      case 26:
        return d26;
      case 27:
        return d27;
      case 28:
        return d28;
      case 29:
        return d29;
      case 30:
        return d30;
      case 31:
        return d31;
    }
  }

}