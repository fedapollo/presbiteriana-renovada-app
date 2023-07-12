import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class KnowUsScreen extends StatelessWidget {
  const KnowUsScreen({super.key});

  static const routeName = '/know-us';

  void _launchMapsUrl(double lat, double lon) async {
    final availableMaps = await MapLauncher.installedMaps;

    await availableMaps.first.showMarker(
      coords: Coords(lat, lon),
      title: "Igreja Presbiteriana Renovada de Indaiatuba",
    );
  }

  void _launchURL(String www) async {
    if (Platform.isAndroid) {
      AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: www,
      );
      await intent.launch();
    } else {
      final Uri url = Uri.parse(www);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    _launchMapsUrl(-23.093760, -47.205270);
                  }, // Image tapped
                  child: Image.asset(
                    'assets/images/mapa_igreja.png',
                    fit: BoxFit.cover,
                    scale: 2,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Alameda Dr. José Cardeal, 116 - Jardim Paraíso, Indaiatuba - SP, 13343-100',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Conheça também as nossas rede sociais:',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.facebook.com/iprielizeu/about');
                    },
                    child: const ImageIcon(
                      AssetImage("assets/images/facebook.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.instagram.com/ipr.indaiatuba');
                    },
                    child: const ImageIcon(
                      AssetImage("assets/images/instagram.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://open.spotify.com/show/6WCYBCj85nY8UeYo6AYwEM?si=b57604c38ef34b04&utm_medium=share&utm_source=linktree&nd=1');
                    },
                    child: const ImageIcon(
                      AssetImage("assets/images/spotify.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL('https://www.youtube.com/channel/UC3EWuJi_s3urWb23uRJ6Crw');
                    },
                    child: const ImageIcon(
                      AssetImage("assets/images/youtube.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),),
                child: const Text(
                  'Voltar para o login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
