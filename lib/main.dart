import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/faram/location_select.dart';
import 'package:helasy_tash1/ui/home/home_screen.dart';
import 'package:helasy_tash1/ui/home/location_bady.dart';
import 'package:helasy_tash1/ui/home/selected_other.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HEALSY",
       // theme: ThemeData(backgroundColor: Colors.white),
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        LocationBady.routeName:(context) => LocationBady(),
        LocationSelect.routeName:(context) => LocationSelect(),
        SelectedOther.routeName:(context) => SelectedOther(),
      },
      initialRoute:HomeScreen.routeName ,
      // ),
    );
  }
}
