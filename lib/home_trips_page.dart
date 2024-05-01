import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTripsPage extends StatelessWidget {
  const HomeTripsPage({super.key});

  final String descriptionDummy =
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // const HeaderAppBar(),
        ListView(
          children: <Widget>[
            DescriptionPlace(
              namePlace: 'Duwili Ella',
              stars: 4,
              descriptionPlace: descriptionDummy,
            ),
            const ReviewList(),
          ],
        ),
          // const GradientBack(title: 'Popular'),
        const HeaderAppBar(),
      ],
    );
  }
}
