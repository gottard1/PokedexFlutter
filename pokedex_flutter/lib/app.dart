import 'package:flutter/material.dart';
import 'package:flutter_timer/scenes/pokedex/view/pokedex.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      home: Pokedex(),
      debugShowCheckedModeBanner: false,
    );
  }
}
