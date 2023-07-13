class Event {
  const Event({
    required this.id,
    required this.title,
    required this.category,
    required this.simpleDescription,
    required this.detailedDescription,
    required this.startTime,
    required this.endTime,
    required this.latitude,
    required this.longitude,
    required this.local,
    required this.address,
    required this.theme,
    required this.lecturer,
  });

  final String id;
  final String title;
  final String category;
  final String simpleDescription;
  final String detailedDescription;
  final int startTime;
  final int endTime;
  final String local;
  final String address;
  final double latitude;
  final double longitude;
  final String theme;
  final String lecturer;
}
