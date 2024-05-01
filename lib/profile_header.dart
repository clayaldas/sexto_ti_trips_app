import 'package:flutter/material.dart';

import 'user_info.dart';
import 'buttons_bar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Text title = const Text(
      'Profile',
      style: TextStyle(
        fontFamily: 'Lato',
        color: Colors.white,
        //fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 10.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              title,
            ],
          ),
          const UserInfo(
            imageProfile: 'assets/images/pathum.jpg',
            name: 'Pathum Tzoo',
            email: 'pathumtzoo1@gmail.com',
          ),
          const ButtonsBar(),
        ],
      ),
    );
  }
}
