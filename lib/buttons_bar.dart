import 'package:flutter/material.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  const ButtonsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        //horizontal: 0.0,
        vertical: 1.0,
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 10),
          CircleButton(
            mini: true,
            icon: Icons.turned_in_not,
            iconSize: 20.0,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          // Padding(padding: EdgeInsets.all(3)),
          SizedBox(width: 10),
          CircleButton(
            mini: true,
            icon: Icons.card_travel,
            iconSize: 20.0,
            color: Color.fromRGBO(255, 255, 255, 0.6),
          ),
          SizedBox(width: 10),
          CircleButton(
            mini: false,
            icon: Icons.add,
            iconSize: 40.0,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          SizedBox(width: 10),
          CircleButton(
            mini: true,
            icon: Icons.mail_outline,
            iconSize: 20.0,
            color: Color.fromRGBO(255, 255, 255, 0.6),
          ),
          SizedBox(width: 10),
          CircleButton(
            mini: true,
            icon: Icons.person,
            iconSize: 20.0,
            color: Color.fromRGBO(255, 255, 255, 0.6),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
