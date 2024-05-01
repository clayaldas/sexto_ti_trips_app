import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonText;
  const ButtonPurple({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Navegando'),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        height: 40,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xff4268D3),
              Color(0xff584BD1),
            ],
            // begin: Alignment.centerLeft,
            // end: Alignment.centerRight,
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 14.0,
              fontFamily: 'Lato',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
