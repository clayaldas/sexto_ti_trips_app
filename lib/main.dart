import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trips_app/trips.dart';
//import 'package:flutter_trips_app/trips_cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String descriptionPlace =
      'Lorem ipsum dolor sit amet consectetur adipiscing elit habitant mattis vestibulum, venenatis pretium aliquam nec erat ligula magna mus leo, sapien montes curae senectus netus ornare rhoncus semper fringilla. Nunc porttitor consequat urna maecenas litora commodo viverra lobortis, erat nisl sociosqu accumsan convallis quis vulputate etiam, mollis dignissim non in blandit aliquam nostra. Fringilla inceptos urna fames parturient quam libero habitant aenean tortor maecenas nullam conubia metus sem, rhoncus gravida phasellus duis etiam vel imperdiet primis enim lacus aliquam sociosqu..';

  @override
  Widget build(BuildContext context) {
    // permite hacer el appBar transparente
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //o configure el color con: Color(0xFF0000FF)
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sexto TI Flutter trips',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // el Scaffold ahora esta en esta clase
      home: const Trips(),
      //home: const TripsCupertino(),
    );
  }
}
