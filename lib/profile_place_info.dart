import 'package:flutter/material.dart';

import 'place.dart';
import 'floating_action_button_green.dart';

class ProfilePlaceInfo extends StatelessWidget {
  final Place place;

  const ProfilePlaceInfo({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final placeName = Text(
      place.name,
      style: const TextStyle(
        fontFamily: 'Lato',
        // fontSize: 20.0,
        fontSize: 14.0,
        // fontWeight: FontWeight.bold,
      ),
    );

    final placeInformation = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            place.where,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.4),
              fontFamily: 'Lato',
              // fontSize: 12.0,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            place.type,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.4),
              fontFamily: 'Lato',
              // fontSize: 12.0,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    final steps = Text(
      'Steps ${place.steps}',
      style: const TextStyle(
        fontFamily: 'Lato',
        fontSize: 12.0,
        // fontWeight: FontWeight.bold,
        color: Colors.amber,
      ),
    );

    final card = Container(
      width: screenWidth * 0.65,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            placeName,
            placeInformation,
            steps,
          ],
        ),
      ),
    );

    return Stack(
      alignment: const Alignment(0.8, 1.25),
      children: [
        card,
        const FloatingActionButtonGreen(),
      ],
    );
  }
}
