class VacationSummary {
  final int userId;
  final int daysTotal;
  final int daysUsed;
  final int daysAvailable;

  const VacationSummary({
    required this.userId,
    required this.daysTotal,
    required this.daysUsed,
    required this.daysAvailable,
  });

  factory VacationSummary.fromJson(Map<String, dynamic> json) {
    return VacationSummary(
      userId: json['userId'],
      daysTotal: json['daysTotal'],
      daysUsed: json['daysUsed'],
      daysAvailable: json['daysAvailable'],
    );
  }
}