import 'package:flutter/material.dart';
import 'package:flutter_timer/utils/pokemon_element.dart';

class PokemonTypesList extends StatelessWidget {
  final List<ElementType> types = [
    ElementType.BUG,
    ElementType.DARK,
    ElementType.DRAGON,
    ElementType.ELECTRIC,
    ElementType.FAIRY,
    ElementType.FIGHTING,
    ElementType.FIRE,
    ElementType.FLYING,
    ElementType.GHOST,
    ElementType.GRASS,
    ElementType.GROUND,
    ElementType.ICE,
    ElementType.NORMAL,
    ElementType.POISON,
    ElementType.PSYCHIC,
    ElementType.ROCK,
    ElementType.STEEL,
    ElementType.WATER,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Selecione o tipo'),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: types.length,
          itemBuilder: (context, index) {
            final type = types[index];
            return TextButton(
              onPressed: () {
                Navigator.pop(context, type);
              },
              child: Text(
                type.name,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: type.typeColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
