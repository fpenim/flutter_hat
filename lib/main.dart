import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_hat/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAT',
      theme: ThemeData(
        // Default brightness and colors
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryColorLight,
        accentColor: kSecondaryColor,
        scaffoldBackgroundColor: Colors.white,
        // Typography
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.w300),
          headline2: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w500),
          headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
          headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
        ),
        // App Bar Theme
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
