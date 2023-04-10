import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/pokemon_element.dart';

class PokedexTagListView extends StatelessWidget {
  final ElementType element;

  PokedexTagListView({required this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0), color: element.typeColor),
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 255, 255, 255)),
            child: SvgPicture.asset(
              element.icon,
              width: 20,
              height: 20,
              semanticsLabel: 'Element Image',
            ),
          ),
          SizedBox(width: 4),
          Text(
            element.title,
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
