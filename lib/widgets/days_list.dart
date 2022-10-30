import "package:flutter/material.dart";
import 'day_card.dart';

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
            DayCard(image: "assets/monday1.png", name: "Monday"),
            DayCard(image: "assets/tuesday1.png", name: "Tuesday"),
            DayCard(image: "assets/wednesday1.png", name: "Wednesday"),
            DayCard(image: "assets/thursday1.png", name: "Thursday"),
            DayCard(image: "assets/friday1.png", name: "Friday"),
          ],
        ));
  }
}
