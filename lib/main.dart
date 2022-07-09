import 'package:flutter/material.dart';
import 'package:uis/screens/splashscreens/splash_screen_one.dart';
import 'package:uis/screens/walkthrough_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "OpenSans",
      ),
      initialRoute: '/splash-one',
      routes: {
        '/': (context) => SplashScreenOne(),
        '/splash-one': (context) => SplashScreenOne(),
        '/walkthrough-one': (context) => WalkThroughOne()
      },
    );
  }
}
