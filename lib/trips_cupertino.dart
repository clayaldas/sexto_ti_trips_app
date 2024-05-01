import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips_page.dart';
import 'search_trips_page.dart';
import 'profile_trips_page.dart';

class TripsCupertino extends StatelessWidget {
  static final List<Widget> navigationWidget = [
    const HomeTripsPage(),
    const SearchTripsPage(),
    const ProfileTripsPage(),
  ];

  const TripsCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            //backgroundColor: Colors.transparent,
            backgroundColor: Colors.white.withAlpha(70),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  //color: Colors.indigo,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  //color: Colors.greenAccent,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  //color: Colors.indigo,
                ),
                label: '',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) => navigationWidget[index],
            );
          }),
    );
  }
}
