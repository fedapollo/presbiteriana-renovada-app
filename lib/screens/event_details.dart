import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import '../models/event.dart';
import '../models/event_category.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key, required this.event});

  final Event event;

  static const routeName = '/event-details';

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  void _launchMapsUrl(double lat, double lon) async {
    final availableMaps = await MapLauncher.installedMaps;

    await availableMaps.first.showMarker(
      coords: Coords(lat, lon),
      title: "Igreja Presbiteriana Renovada de Indaiatuba",
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [];
    if (widget.event.category == EventCategory.WORKSHIP.toString()) {
      colors = [Colors.black, Colors.white54];
    }
    if (widget.event.category == EventCategory.MENS_MINISTRY.toString()) {
      colors = [Colors.blue, Colors.blueAccent];
    }
    if (widget.event.category ==
        EventCategory.DOMINICAL_BIBLICAL_SCHOOL.toString()) {
      colors = [Colors.yellow, Colors.yellowAccent];
    }
    if (widget.event.category == EventCategory.WOMENS_MINISTRY.toString()) {
      colors = [Colors.pink, Colors.pinkAccent];
    }
    if (widget.event.category == EventCategory.MARRIAGE_MINISTRY.toString()) {
      colors = [Colors.red, Colors.redAccent];
    }
    if (widget.event.category == EventCategory.YOUTH_MINISTRY.toString()) {
      colors = [Colors.lightBlue, Colors.lightBlueAccent];
    }
    if (widget.event.category == EventCategory.TEENAGERS_MINISTRY.toString()) {
      colors = [Colors.green, Colors.greenAccent];
    }
    if (widget.event.category == EventCategory.CHILDREN_MINISTRY.toString()) {
      colors = [Colors.white, Colors.white54];
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          title: Text(widget.event.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descrição do evento:\n${widget.event.detailedDescription}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Palestrante:\n${widget.event.lecturer}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Tema:\n${widget.event.theme}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Local:\n${widget.event.local}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Endereço:\n${widget.event.address}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Horário de inicio:\n${DateFormat('HH:mm - dd/MM/yy').format(DateTime.fromMicrosecondsSinceEpoch((widget.event.startTime) * 1000))}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Text(
                  'Horário de inicio:\n${DateFormat('HH:mm - dd/MM/yy').format(DateTime.fromMicrosecondsSinceEpoch((widget.event.endTime) * 1000))}',
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo[900]),
                  ),
                  onPressed: () {
                    _launchMapsUrl(
                        widget.event.latitude, widget.event.longitude);
                  },
                  child: const Text(
                    'Não sabe onde fica? Clica aqui!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                    'Quer contribuir com o crescimento do reino de Deus?\nEsses são nossos dados bancários e a chave pix',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left),
                const Text('Banco Bradesco',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left),
                Row(
                  children: [
                    const Text('Pix: 54.698,998/0001-79',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(
                          const ClipboardData(text: '54.698,998/0001-79'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Pix copiado!'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.copy, color: Colors.white,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
