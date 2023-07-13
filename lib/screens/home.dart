import 'package:flutter/material.dart';
import 'package:igreja_presbiteriana_app/screens/event_list.dart';
import 'package:igreja_presbiteriana_app/widgets/CategoryItem.dart';

import '../models/event_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
          Container(
            padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
            child: const Text(
              'Fique por dentro de tudo que acontece na IPRI !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 4,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                CategoryItem(
                  category: EventCategory.WORKSHIP,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.WORKSHIP)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.DOMINICAL_BIBLICAL_SCHOOL,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.DOMINICAL_BIBLICAL_SCHOOL)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.MENS_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.MENS_MINISTRY)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.WOMENS_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.WOMENS_MINISTRY)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.MARRIAGE_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.MARRIAGE_MINISTRY)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.YOUTH_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.YOUTH_MINISTRY)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.TEENAGERS_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.TEENAGERS_MINISTRY)),
                    );
                  },
                ),
                CategoryItem(
                  category: EventCategory.CHILDREN_MINISTRY,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (ctx) => const EventListScreen(
                              category: EventCategory.CHILDREN_MINISTRY)),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
