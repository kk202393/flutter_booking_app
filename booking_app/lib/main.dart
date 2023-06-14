import 'package:booking_app/screens/button_bar.dart';
import 'package:booking_app/utils/app_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: primary),
      home: const ButtomBar(title: 'Flutter Demo Home Page'),
    );
  }
}
