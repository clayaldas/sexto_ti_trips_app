import 'package:flutter/material.dart';
import 'place.dart';
import 'profile_place.dart';

class ProfilePlacesList extends StatelessWidget {
  final Place place1 = Place(
    name: 'Knuckles Mountains Range',
    where: 'Hiking. Water fall hunting. Natural bath',
    type: 'Scenery & Photography',
    steps: '123,123,123',
  );
  final Place place2 = Place(
    name: 'Mountains',
    where: 'Hiking. Water fall hunting. Natural bath',
    type: 'Scenery & Photography',
    steps: '321,321,321',
  );

  // const ProfilePlacesList({super.key});
  ProfilePlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0,
      ),
      child: Column(
        children: [
          ProfilePlace(image: 'assets/images/mountains.jpg', place: place1),
          ProfilePlace(image: 'assets/images/snow.jpg', place: place2),
        ],
      ),
    );
  }
}
