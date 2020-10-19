import 'package:flutter/material.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chapin express',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTexColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
