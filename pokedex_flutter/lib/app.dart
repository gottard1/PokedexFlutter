import 'package:flutter/material.dart';

import 'Timer/View/Timer_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 2, 172, 202),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromRGBO(104, 106, 156, 1),
        ),
      ),
      home: const TimerPage(),
    );
  }
}