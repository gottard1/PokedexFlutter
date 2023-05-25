import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/scenes/pokedex/cubit/pokedex_cubit.dart';
import 'package:flutter_timer/scenes/pokedex/screen/pokedex_page.dart';
import 'package:flutter_timer/service/pokedex_list_repository.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokedexListCubit(PokedexListRepository()),
      child: MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'poppins',
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        home: Pokedex(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
