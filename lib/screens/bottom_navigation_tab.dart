import 'package:flutter/material.dart';
import 'package:igreja_presbiteriana_app/screens/home.dart';
import 'package:igreja_presbiteriana_app/screens/profile.dart';

class BottomNavigationTabScreen extends StatefulWidget {
  const BottomNavigationTabScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTabScreen> createState() =>
      _BottomNavigationTabScreenState();
}

class _BottomNavigationTabScreenState extends State<BottomNavigationTabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget container =
        _selectedPageIndex == 1 ? const ProfileScreen() : const HomeScreen();

    return Scaffold(
        body: container,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.indigo[900],
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.white,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.white,
              label: 'Perfil',
            ),
          ],
        ));
  }
}
