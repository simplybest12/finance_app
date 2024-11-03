import 'package:finance_app/pages/addpage.dart';
import 'package:finance_app/pages/splash.dart';
import 'package:finance_app/pages/statistics.dart';
import 'package:finance_app/widgets/bottom.dart';

import 'package:flutter/material.dart';
import 'pages/getstarted.dart';
import 'pages/home/home.dart';
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
        colorScheme: ColorScheme.light(
            surface: Colors.grey.shade100,
            primary: Colors.teal,
            onSurface: Colors.black,
            outline: Colors.grey),
        useMaterial3: true,
      ),
      initialRoute: 'splash',
      // home: Bottom(),
      routes: {
        'splash': (context) => const Splash(),
        'bottom': (context) =>  Bottom(),
        'add': (context) => const AddExpense(),
        '/': (context) => const GetStarted(),
        'login': (context) => const Name(),
        'register': (context) => const RegistrationPage(),
        'home': (context) => const HomePage(),
        'stats': (context) => const Statistics(),
      },
    );
  }
}
