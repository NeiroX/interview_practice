import 'package:flutter/material.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/Partnership/partnership_screen.dart';
import 'Screens/Store/store_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/store': (context) => StoreScreen(),
        '/partnership': (context) => PartnershipScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Interview Practicing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), // home: StoreScreen(),
    );
  }
}
