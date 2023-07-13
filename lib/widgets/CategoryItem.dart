import 'package:flutter/material.dart';
import 'package:igreja_presbiteriana_app/models/event_category.dart';

import '../screens/event_list.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  final EventCategory category;
  final Function() onTap;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [];
    if (widget.category == EventCategory.WORKSHIP) {
      colors = [Colors.black, Colors.white54];
    }
    if (widget.category == EventCategory.MENS_MINISTRY) {
      colors = [Colors.blue, Colors.blueAccent];
    }
    if (widget.category == EventCategory.DOMINICAL_BIBLICAL_SCHOOL) {
      colors = [Colors.yellow, Colors.yellowAccent];
    }
    if (widget.category == EventCategory.WOMENS_MINISTRY) {
      colors = [Colors.pink, Colors.pinkAccent];
    }
    if (widget.category == EventCategory.MARRIAGE_MINISTRY) {
      colors = [Colors.red, Colors.redAccent];
    }
    if (widget.category == EventCategory.YOUTH_MINISTRY) {
      colors = [Colors.lightBlue, Colors.lightBlueAccent];
    }
    if (widget.category == EventCategory.TEENAGERS_MINISTRY) {
      colors = [Colors.green, Colors.greenAccent];
    }
    if (widget.category == EventCategory.CHILDREN_MINISTRY) {
      colors = [Colors.white, Colors.white54];
    }
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          widget.category == EventCategory.WORKSHIP
              ? 'Culto'
              : widget.category == EventCategory.MENS_MINISTRY
                  ? 'Ministério de Homens'
                  : widget.category == EventCategory.DOMINICAL_BIBLICAL_SCHOOL
                      ? 'Escola Bíblica'
                      : widget.category == EventCategory.WOMENS_MINISTRY
                          ? 'Ministério de Mulheres'
                          : widget.category == EventCategory.MARRIAGE_MINISTRY
                              ? 'Ministério de Casais'
                              : widget.category == EventCategory.YOUTH_MINISTRY
                                  ? 'Ministério de Jovens'
                                  : widget.category ==
                                          EventCategory.TEENAGERS_MINISTRY
                                      ? 'Ministério de Adolesc.'
                                      : widget.category ==
                                              EventCategory.CHILDREN_MINISTRY
                                          ? 'Ministério de Crianças'
                                          : '',
          style: TextStyle(
            color: widget.category == EventCategory.CHILDREN_MINISTRY ||
                    widget.category == EventCategory.DOMINICAL_BIBLICAL_SCHOOL
                ? Colors.black
                : Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
