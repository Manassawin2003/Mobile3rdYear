import 'package:flutter/material.dart';
import 'first_page.dart'; // Import the FirstPage

void main() {
  runApp(const BirthdayApp());
}

class BirthdayApp extends StatelessWidget {
  const BirthdayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eid Mubarak',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const FirstPage(), // Set FirstPage as the home page
    );
  }
}
