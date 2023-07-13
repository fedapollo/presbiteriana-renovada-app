import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:igreja_presbiteriana_app/screens/know_us.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/event_category.dart';

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

    // junho

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Pr. João',
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'startTime': 1685912400000,
        'endTime': 1685919600000,
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Pr. João',
        'startTime': 1686517200000,
        'endTime': 1686524400000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Pr. João',
        'startTime': 1687122000000,
        'endTime': 1687129200000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Pr. João',
        'startTime': 1687726800000,
        'endTime': 1687734000000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBD',
        'category': EventCategory.DOMINICAL_BIBLICAL_SCHOOL.toString(),
        'simpleDescription': 'Escola Bíblica Dominical',
        'detailedDescription':
            'Escola bíblica dominical para todas as idades, vamos aprender mais sobre a palavra de Deus guiados pelas escrituras e o livro base da EBD',
        'theme': 'Proverbios',
        'lecturer': 'Felipe Genari',
        'startTime': 1687694400000,
        'endTime': 1687698900000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'category': EventCategory.MARRIAGE_MINISTRY.toString(),
        'simpleDescription': 'Para casados e noivos',
        'detailedDescription':
            'Palavra direcionada para casais e noivos, vamos aprender mais sobre o casamento e como Deus quer que vivamos em família e como devemos nos relacionar com nossos cônjuges e filhos e como devemos nos relacionar com Deus',
        'theme': 'Homens e Mulheres de Deus',
        'lecturer': 'Felipe Genari e Lilian de Castro',
        'startTime': 1686438000000,
        'endTime': 1686441600000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'category': EventCategory.WOMENS_MINISTRY.toString(),
        'simpleDescription': 'Culto das mulheres para mulheres',
        'detailedDescription':
            'Venha aprender um pouco mais sobre a palavra de Deus direcionada para as mulheres e suas necessidades e como Deus pode te ajudar a superar os desafios da vida',
        'theme': 'Proverbios',
        'lecturer': 'Silvia',
        'startTime': 1686092400000,
        'endTime': 1686096000000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/06.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'category': EventCategory.MENS_MINISTRY.toString(),
        'simpleDescription': 'Culto direcionado para homens',
        'detailedDescription':
            'Culto com a palavra de Deus direcionada para os homens que buscam uma vida de santidade e comunhão com Deus e com os irmãos da igreja de Cristo Jesus',
        'theme': 'Proverbios',
        'lecturer': 'Pastor Eliseu',
        'startTime': 1687035600000,
        'endTime': 1687039200000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
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
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Seminarista João',
        'startTime': 1688331600000,
        'endTime': 1688338800000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Seminarista Camile',
        'startTime': 1688936400000,
        'endTime': 1688943600000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Seminarista Armando',
        'startTime': 1689541200000,
        'endTime': 1688331600000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Seminarista Samuel',
        'startTime': 1690146000000,
        'endTime': 1690153200000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Culto',
        'category': EventCategory.WORKSHIP.toString(),
        'simpleDescription': 'Culto de domingo',
        'detailedDescription':
            'Culto formal estabelecido pela igreja que deve ocorrer da maneira ordeira todo domingo',
        'theme': 'Proverbios',
        'lecturer': 'Pastor Eliseu',
        'startTime': 1690758000000,
        'endTime': 1690750800000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'EBF',
        'category': EventCategory.DOMINICAL_BIBLICAL_SCHOOL.toString(),
        'simpleDescription': 'Escola Bíblica Dominical',
        'detailedDescription':
            'Escola bíblica dominical para todas as idades, vamos aprender mais sobre a palavra de Deus guiados pelas escrituras e o livro base da EBD',
        'theme': 'Proverbios',
        'lecturer': 'Felipe Genari',
        'startTime': 1689508800000,
        'endTime': 1689514200000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro de casais',
        'category': EventCategory.MARRIAGE_MINISTRY.toString(),
        'simpleDescription': 'Para casados e noivos',
        'detailedDescription':
            'Palavra direcionada para casais e noivos, vamos aprender mais sobre o casamento e como Deus quer que vivamos em família e como devemos nos relacionar com nossos cônjuges e filhos e como devemos nos relacionar com Deus',
        'theme': 'Homens e Mulheres de Deus',
        'lecturer': 'Felipe Genari e Lilian de Castro',
        'startTime': 1690066800000,
        'endTime': 1690070400000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro das Mulheres',
        'category': EventCategory.WOMENS_MINISTRY.toString(),
        'simpleDescription': 'Culto das mulheres para mulheres',
        'detailedDescription':
            'Venha aprender um pouco mais sobre a palavra de Deus direcionada para as mulheres e suas necessidades e como Deus pode te ajudar a superar os desafios da vida',
        'theme': 'Proverbios',
        'lecturer': 'Silvia',
        'startTime': 1689116400000,
        'endTime': 1689120000000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
      }),
    );

    await http.post(
      Uri.parse('$baseUrl/2023/07.json'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': 'Encontro dos Homens',
        'category': EventCategory.MENS_MINISTRY.toString(),
        'simpleDescription': 'Culto direcionado para homens',
        'detailedDescription':
            'Culto com a palavra de Deus direcionada para os homens que buscam uma vida de santidade e comunhão com Deus e com os irmãos da igreja de Cristo Jesus',
        'theme': 'Proverbios',
        'lecturer': 'Pastor Eliseu',
        'startTime': 1690664400000,
        'endTime': 1690668000000,
        'local': 'Igreja Presbiteriana Renovada da Indaiatuba',
        'address':
            'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
        'latitude': -23.093760,
        'longitude': -47.205270,
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

    _createDataBase();
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
                              suffixIcon: IconButton(
                                icon: Icon(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
