class Vacation {
  final int id;
  final DateTime startDate;
  final DateTime endDate;
  final int days;
  final String status;

  const Vacation({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.days,
    required this.status,
  });

  factory Vacation.fromJson(Map<String, dynamic> json) {
    return Vacation(
      id: json['id'],
      startDate: DateTime.parse(json['start_date'].toString()),
      endDate: DateTime.parse(json['end_date'].toString()),
      days: json['days'],
      status: json['status']
    );
  }
}