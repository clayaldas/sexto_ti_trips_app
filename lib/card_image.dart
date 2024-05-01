import 'package:flutter/material.dart';
import 'package:flutter_trips_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  // final String pathImage = 'assets/images/bridge.jpg';
  final String pathImage;

  const CardImage({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(
        top: 70,
        left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );

    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        card,
        const FloatingActionButtonGreen(),
      ],
    );
  }
}
