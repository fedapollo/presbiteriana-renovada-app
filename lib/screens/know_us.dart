import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class KnowUsScreen extends StatelessWidget {
  const KnowUsScreen({super.key});

  static const routeName = '/know-us';

  void _launchMapsUrl(double lat, double lon) async {
    final availableMaps = await MapLauncher.installedMaps;
    print(
        availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

    await availableMaps.first.showMarker(
      coords: Coords(lat, lon),
      title: "Igreja Presbiteriana Renovada de Indaiatuba",
    );
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
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage("assets/images/facebook.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage("assets/images/instagram.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const ImageIcon(
                      AssetImage("assets/images/spotify.png"),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {},
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
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
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
