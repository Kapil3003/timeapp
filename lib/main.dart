import 'package:flutter/material.dart';
import 'package:timeapp/pages/home.dart';
import 'package:timeapp/pages/choose_location.dart';
import 'package:timeapp/pages/loading.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', 
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
    });
  }
}
