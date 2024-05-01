import 'package:flutter/material.dart';
import 'package:flutter_trips_app/profile_background.dart';
import 'package:flutter_trips_app/profile_header.dart';
import 'package:flutter_trips_app/profile_places_list.dart';

class ProfileTripsPage extends StatelessWidget {
  const ProfileTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ProfileBackground(),
        ListView(
          children: [
            const ProfileHeader(),
            ProfilePlacesList(),
          ],
        ),
      ],
    );
  }
}
