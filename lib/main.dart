import 'package:flutter/material.dart';
import 'package:flutterlab1_215071/home.dart';
import '/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: '215071',
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}

