import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final VoidCallback onButtonPressed;

  FilterButton({required this.title, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonPressed,
      child: Expanded(
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(width: 6),
            SvgPicture.asset(
              'assets/pokemon/icon/down_arrow_icon.svg',
              width: 32,
              height: 32,
            ),
          ],
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color.fromARGB(255, 0, 0, 0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        )),
      ),
    );
  }
}
