import 'dart:ffi';

class Event {
  const Event({
    required this.id,
    required this.title,
    required this.type,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.location,
  });

  final String id;
  final String title;
  final String type;
  final String description;
  final int startTime;
  final int endTime;
  final String location;
}
