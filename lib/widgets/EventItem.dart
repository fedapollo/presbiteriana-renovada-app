import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/event.dart';

class EventItem extends StatelessWidget {
  const EventItem(
      {super.key, required this.event, required this.onSelectedEvent});

  final Event event;
  final void Function() onSelectedEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectedEvent,
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: const Icon(Icons.event),
          title: Text(event.title),
          subtitle: Text(event.simpleDescription),
          trailing: Text(
            DateFormat('HH:mm\ndd/MM/yy').format(
                DateTime.fromMicrosecondsSinceEpoch((event.startTime) * 1000)),
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ),
    ));
  }
}
