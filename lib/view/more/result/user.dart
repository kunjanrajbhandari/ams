class User {
  final String subject;
  final double practicalMarks;
  final double theoryMarks;
  final double total;

  const User({
    required this.subject,
    required this.practicalMarks,
    required this.theoryMarks,
    required this.total
  });

  User copy({
    String? subject,
    double? practicalMarks,
    double? theoryMarks,
    double? total,
  }) =>
      User(
        subject: subject ?? this.subject,
        practicalMarks: practicalMarks ?? this.practicalMarks,
        theoryMarks: theoryMarks ?? this.theoryMarks,
        total: total?? this.total
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          subject == other.subject &&
          practicalMarks == other.practicalMarks &&
          theoryMarks == other.theoryMarks &&
          total == other.total;

  @override
  int get hashCode => subject.hashCode ^ practicalMarks.hashCode ^ theoryMarks.hashCode ^ total.hashCode;
}