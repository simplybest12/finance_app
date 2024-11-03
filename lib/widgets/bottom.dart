import 'package:finance_app/pages/home/home.dart';
import 'package:finance_app/pages/statistics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controller.dart/navigation_controller.dart';

class Bottom extends StatefulWidget {
  Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selected_index = 0;
  List screen = [HomePage(), Statistics()];
  final controller = Get.put(NavigationCotroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => screen[controller.currentIndex.value],
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.of(context).pushNamed('add');
          },
          backgroundColor: Color(0xff19BC9B),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xff00c9ff), Color(0xff92fe9d)],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          child: Obx(
            () => BottomNavigationBar(
              
                currentIndex: controller.currentIndex.value,
                selectedItemColor: Colors.teal,
                onTap: (value) {
                  controller.changeValue(value);
                },
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: Colors.white,
                elevation: 3,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.home5), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.chart4), label: "Stats"),
                  // BottomNavigationBarItem(icon: Icon(Iconsax.profile), label: "Account")
                ]),
          ),
        ));
  }
}
