import "package:flutter/material.dart";

const Map<String, List<String>> lunchesForDays = {
  "Monday": ["Zucchini Bread", "Yogurt", "Oatmeal", "Fresh Fruit"],
  "Tuesday": ["Blueberry Waffles", "Fresh Plums"],
  "Wednesday": ["Banana Muffins", "Mozzarella sticks", "Fresh Oranges"],
  "Thursday": ["Pancakes", "Turkey Sausage", "Fresh Apples"],
  "Friday": ["Bagels", "Fresh Pears"]
};

const Map<String, List<Widget>> imagesForDays = {
  "Monday": [
    Hero(
        tag: "assets/monday1.png",
        child: Image(image: AssetImage("assets/monday1.png"))),
    Image(image: AssetImage("assets/monday2.png")),
    Image(image: AssetImage("assets/monday3.png")),
    Image(image: AssetImage("assets/monday4.png")),
  ],
  "Tuesday": [
    Hero(
        tag: "assets/tuesday1.png",
        child: Image(image: AssetImage("assets/tuesday1.png"))),
    Image(image: AssetImage("assets/tuesday2.png")),
  ],
  "Wednesday": [
    Hero(
        tag: "assets/wednesday1.png",
        child: Image(image: AssetImage("assets/wednesday1.png"))),
    Image(image: AssetImage("assets/wednesday2.png")),
    Image(image: AssetImage("assets/wednesday3.png")),
  ],
  "Thursday": [
    Hero(
        tag: "assets/thursday1.png",
        child: Image(image: AssetImage("assets/thursday1.png"))),
    Image(image: AssetImage("assets/thursday2.png")),
    Image(image: AssetImage("assets/thursday3.png")),
  ],
  "Friday": [
    Hero(
        tag: "assets/friday1.png",
        child: Image(image: AssetImage("assets/friday1.png"))),
    Image(image: AssetImage("assets/friday2.png")),
  ],
};

class LunchPage extends StatelessWidget {
  const LunchPage({super.key, required this.day});
  final String day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(day),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[800],
            child: ListView(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: lunchesForDays[day]!
                        .map((t) => Text(
                              "• $t",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ))
                        .toList()),
                Column(children: imagesForDays[day]!),
              ],
            )));
  }
}
