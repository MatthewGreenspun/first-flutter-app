import 'package:flutter/material.dart';
import './widgets/days_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("School Lunch Menu")),
        body: const DaysList(),
      )
    );
  }
}