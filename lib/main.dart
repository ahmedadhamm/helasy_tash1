import 'package:flutter/material.dart';
import 'package:helasy_tash1/ui/home/home_screen.dart';

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
        HomeScreen.routeName:(context) => HomeScreen()
      },
      initialRoute:HomeScreen.routeName ,
      // ),
    );
  }
}
