import 'package:chefconnect/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart'; // Import your Home widget
import 'burger.dart';
import 'pizza.dart';
import 'sandwich.dart';
import 'sushi.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/splash', // Set the initial route to Splash
      routes: {
        '/splash': (context) => Splash(),
        '/home': (context) => Home(), // Add a named route for Home
        '/burger':(context) => Burger(),
        '/sandwich':(context) => Sandwich(),
        '/pizza':(context) => Pizza(),
        '/sushi':(context) => Sushi(),
      },
    );
  }
}
