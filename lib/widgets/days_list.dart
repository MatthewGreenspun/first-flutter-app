import "package:flutter/material.dart";
import 'day_container.dart';

class DaysList extends StatelessWidget {
  const DaysList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        color: Colors.grey[800],
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const <Widget>[
            RecipieContainer(image: "assets/monday1.png", name: "Monday"),
            RecipieContainer(image: "assets/tuesday1.png", name: "Tuesday"),
            RecipieContainer(image: "assets/wednesday1.png", name: "Wednesday"),
            RecipieContainer(image: "assets/thursday1.png", name: "Thursday"),
            RecipieContainer(image: "assets/friday1.png", name: "Friday"),
          ],
        ));
  }
}
