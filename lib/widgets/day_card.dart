import "package:flutter/material.dart";
import "../screens/lunch_page.dart";

class DayCard extends StatelessWidget {
  final String _image;
  final String _name;
  const DayCard({super.key, required image, required name})
      : _image = image,
        _name = name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LunchPage(
                    day: _name,
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 100,
        padding: const EdgeInsets.all(8),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Hero(
              tag: _image,
              child: Image(
                image: AssetImage(_image),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _name,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
