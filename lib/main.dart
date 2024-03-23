import 'package:finance_app/pages/splash.dart';
import 'package:finance_app/pages/statistics.dart';
import 'package:finance_app/widgets/bottom.dart';
import 'package:finance_app/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'pages/getstarted.dart';
import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: 'stats',
      home: Bottom(),
      // routes: {
      //   'splash': (context) => const Splash(),
      //   '/': (context) => const GetStarted(),
      //   'login': (context) => const Name(),
      //   'register': (context) => const RegistrationPage(),
      //   'home': (context) => const HomePage(),
      //   'stats': (context) => const Statistics(),
      // },
    );
  }
}
