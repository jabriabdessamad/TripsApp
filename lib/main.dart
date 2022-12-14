import 'package:flutter/material.dart';
import 'package:trips_app/screens/home.dart';
import 'package:trips_app/screens/sandbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trips App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SandBox(),
    );
  }
}
