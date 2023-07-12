import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:igreja_presbiteriana_app/screens/know_us.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  var _enteredEmail = '';
  var _enteredPassword = '';
  var _isAuthenticating = false;
  bool _passwordVisible = false;

  void _createDataBase() async {
    const baseUrl =
        'https://presbiteriana-renovada-app-default-rtdb.firebaseio.com/schedules/';

    // janeiro
    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/01.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    //fevereiro

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/02.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // março

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/03.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // abril

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/04.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // maio

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/05.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // junho

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // julho

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // agosto

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/08.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // setembro

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/09.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // outubro

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/10.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    // novembro
    // sem nada para ser usado de exemplo

    // dezembro

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688331600000,
        'endTime': 1688331600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1688936400000,
        'endTime': 1688936400000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1689541200000,
        'endTime': 1689541200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690146000000,
        'endTime': 1690146000000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'type': 'WORSHIP',
        'description': 'Culto de domingo',
        'startTime': 1690750800000,
        'endTime': 1690750800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'type': 'EVENT',
        'description': 'Escola bíblica dominical especial de férias',
        'startTime': 1689508800000,
        'endTime': 1689508800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'type': 'EVENT',
        'description': 'Para namorados e casados!',
        'startTime': 1689807600000,
        'endTime': 1689807600000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'type': 'EVENT',
        'description': 'Um tempo para as irmãs falarem de Deus da perspectiva feminina',
        'startTime': 1689721200000,
        'endTime': 1689721200000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/12.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'type': 'EVENT',
        'description': 'Todos os homens convocados para a batalha!',
        'startTime': 1690066800000,
        'endTime': 1690066800000,
        'location': 'Igreja Presbiteriana Renovada',
      }),
    );
  }

  void _submit() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();
    try {
      setState(() {
        _isAuthenticating = true;
      });
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _enteredEmail,
        password: _enteredPassword,
      );
    } on FirebaseAuthException catch (error) {
      if (kDebugMode) {
        print('FirebaseAuthException: $error');
      }
      var message = 'Um erro ocorreu, por favor verifique os dados informados!';
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
      setState(() {
        _isAuthenticating = false;
      });
    } catch (error) {
      if (kDebugMode) {
        print('Error during authentication: $error');
      }
      setState(() {
        _isAuthenticating = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;

    // _createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 20, top: 20, left: 20, right: 20),
                child: Image.asset(
                  'assets/images/ipri_logo.png',
                  fit: BoxFit.cover,
                  scale: 1.2,
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            key: const ValueKey('email'),
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                const InputDecoration(labelText: 'E-mail'),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Por favor, coloque um e-mail válido!';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _enteredEmail = value!;
                            },
                          ),
                          TextFormField(
                            key: const ValueKey('password'),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              // Here is key idea
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.indigo[900],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                            obscureText: !_passwordVisible,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'A senha não pode estar vazia!';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _enteredPassword = value!;
                            },
                          ),
                          const SizedBox(height: 12),
                          if (_isAuthenticating)
                            const CircularProgressIndicator(),
                          if (!_isAuthenticating)
                            ElevatedButton(
                              onPressed: _submit,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.indigo[900]),
                              ),
                              child: const Text(
                                'Entrar',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          const SizedBox(height: 12),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => const KnowUsScreen(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.indigo[900]),
                            child: const Text('Conheça-nos'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
