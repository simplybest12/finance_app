import 'package:finance_app/widgets/chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/geter.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List day = ['Day', 'Weekly', 'Monthly', 'Yearly'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    print("you did it!");
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Statistics",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(4, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 75,
                            height: 35,
                            decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? const Color(0xff19BC9B)
                                    : Colors.white,
                                border: Border.all(
                                    color: selectedIndex != index
                                        ? Color(0xff19BC9B)
                                        : Colors.transparent),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(14))),
                            child: Center(
                                child: Text(
                              day[index],
                              style: GoogleFonts.poppins(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13),
                            )),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Chart(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Spendings",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.swap_vert,
                          color: Colors.black45,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(childCount: geter().length,
                    (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/investmentc.png',
                    height: 35,
                  ),
                ),
                title: Text(
                  geter()[index].name!,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  geter()[index].time!,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 11,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
