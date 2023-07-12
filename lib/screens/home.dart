import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../models/event.dart';
import '../widgets/EventItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Event> _scheduledEvents = [];
  var _isLoading = true;
  String? _error;
  var _monthYear = DateFormat('yyyy/MM').format(DateTime.now()).toString();
  var monthToShow = '';

  @override
  void initState() {
    super.initState();

    monthToShow = _portugueseMonth(int.parse(_monthYear.split('/')[1]));

    if (_scheduledEvents.isEmpty) {
      _loadScheduledEvents();
    }
  }

  void _nextMonth() {
    var month = int.parse(_monthYear.split('/')[1]);
    if (month < 12) {
      month++;
      setState(() {
        _monthYear =
            '${_monthYear.split('/')[0]}/${month < 10 ? '0$month' : month}';
        monthToShow = _portugueseMonth(month);
        _isLoading = true;
      });
      _loadScheduledEvents();
    }
  }

  void _previousMonth() {
    var month = int.parse(_monthYear.split('/')[1]);
    if (month > 1) {
      month--;
      setState(() {
        _monthYear =
            '${_monthYear.split('/')[0]}/${month < 10 ? '0$month' : month}';
        monthToShow = _portugueseMonth(month);
        _isLoading = true;
      });
      _loadScheduledEvents();
    }
  }

  String _portugueseMonth(int month) {
    switch (month) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
        return '';
    }
  }

  void _loadScheduledEvents() async {
    final url = Uri.parse(
        'https://presbiteriana-renovada-app-default-rtdb.firebaseio.com/schedules/$_monthYear.json');

    try {
      final response = await http.get(url);
      if (response.statusCode >= 400) {
        _error = 'Erro ao carregar eventos';
        setState(() {
          _isLoading = false;
        });
        return;
      }

      if (response.body == 'null') {
        _scheduledEvents.clear();
        setState(() {
          _isLoading = false;
        });
        return;
      }

      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Event> events = [];
      for (var item in extractedData.entries) {
        events.add(Event(
          id: item.key,
          title: item.value['title'],
          type: item.value['type'],
          description: item.value['description'],
          startTime: item.value['startTime'],
          endTime: item.value['endTime'],
          location: item.value['location'],
        ));
      }
      events.sort((a, b) => a.startTime.compareTo(b.startTime));
      _scheduledEvents.clear();
      setState(() {
        _scheduledEvents.addAll(events);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('Nenhum evento cadastrado esse mês',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
    );

    if (_isLoading) {
      content = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      content = const Center(
        child: Text(
          'Ocorreu um erro ao carregar os eventos, tente novamente mais tarde',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    if (_scheduledEvents.isNotEmpty) {
      content = ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: _scheduledEvents.length,
        itemBuilder: (ctx, index) {
          return EventItem(
            event: _scheduledEvents[index],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'IPRI Digital',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: IconButton(
                  color: Colors.blueAccent,
                  onPressed: _previousMonth,
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              Text(
                monthToShow,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: IconButton(
                  color: Colors.blueAccent,
                  onPressed: _nextMonth,
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          Expanded(
            child: content,
          ),
        ],
      ),
    );
  }
}
