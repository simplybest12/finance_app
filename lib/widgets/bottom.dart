import 'package:finance_app/pages/home.dart';
import 'package:finance_app/pages/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selected_index = 0;
  List screen = [HomePage(), Statistics(), HomePage(), Statistics];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selected_index],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff19BC9B),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_index = 0;
                    });
                  },
                  icon: Icon(
                    selected_index != 0 ? Icons.home_outlined : Icons.home,
                    color:
                        selected_index == 0 ? Color(0xff19BC9B) : Colors.grey,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_index = 1;
                    });
                  },
                  icon: Icon(
                      selected_index != 1
                          ? Icons.bar_chart_outlined
                          : Icons.bar_chart,
                      color: selected_index == 1
                          ? Color(0xff19BC9B)
                          : Colors.grey)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_index = 2;
                    });
                  },
                  icon: Icon(
                      selected_index != 2
                          ? Icons.account_balance_outlined
                          : Icons.account_balance,
                      color: selected_index == 2
                          ? Color(0xff19BC9B)
                          : Colors.grey)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selected_index = 3;
                    });
                  },
                  icon: Icon(
                      selected_index != 3
                          ? Icons.person_outlined
                          : Icons.person,
                      color: selected_index == 3
                          ? Color(0xff19BC9B)
                          : Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
