import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
          pathImage: 'assets/images/girl.jpg',
          name: 'Varuna Yasas',
          information: '1 review 5 photos',
          comment: 'There is an amazing place in Siri Lanka',
        ),
        Review(
          pathImage: 'assets/images/ann.jpg',
          name: 'Varuna Yasas',
          information: '1 review 5 photos',
          comment: 'There is an amazing place in Siri Lanka',
        ),
        Review(
          pathImage: 'assets/images/people.jpg',
          name: 'Varuna Yasas',
          information: '1 review 5 photos',
          comment: 'There is an amazing place in Siri Lanka',
        ),
      ],
    );
  }
}
