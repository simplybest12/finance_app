import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight:  Radius.circular(24),
              ),
              color: Colors.greenAccent
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_rounded,color: Colors.white,)))
        ]),
      ),
    );
  }
}
