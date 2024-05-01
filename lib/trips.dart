import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_trips_page.dart';
import 'search_trips_page.dart';
import 'profile_trips_page.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TripsState();
  }
}

class _TripsState extends State<Trips> {
  int indexTap = 0;

  final List<Widget> widgetChildren = [
    const HomeTripsPage(),
    const SearchTripsPage(),
    const ProfileTripsPage(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: HomeTripsPage(),
      body: widgetChildren[indexTap],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          //primaryColor: Colors.purple,
          colorScheme:
              const ColorScheme.light().copyWith(primary: Colors.purple),
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
