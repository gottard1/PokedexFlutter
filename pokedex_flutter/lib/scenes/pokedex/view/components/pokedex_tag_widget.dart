import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/pokemon_element.dart';

class PokedexTag extends StatelessWidget {
  final ElementType element;

  PokedexTag({required this.element});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              color: element.typeColor),
          padding: EdgeInsets.all(4),
          child: FittedBox(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  padding: EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    element.icon,
                    width: 16,
                    height: 16,
                    semanticsLabel: 'Element Image',
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  element.title,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
      ],
    );
  }
}
