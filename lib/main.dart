import 'package:flutter/material.dart';
import 'package:sns_app/screens/home_screen.dart';

import 'screens/signin_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const SnsApp());
}

class SnsApp extends StatefulWidget {
  const SnsApp({super.key});
  @override
  SnsAppState createState() => SnsAppState();
}

class SnsAppState extends State<SnsApp> {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF34D399),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF34D399),
          elevation: 0.0,
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case '/signin':
            return MaterialPageRoute(
                builder: (context) => const SigninScreen());
          case '/signup':
            return MaterialPageRoute(
                builder: (context) => const SignupScreen());
          default:
            return MaterialPageRoute(builder: (context) => const HomeScreen());
        }
      },
      home: const SigninScreen(),
    );
  }
}
