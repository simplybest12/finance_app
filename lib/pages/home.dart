import 'package:finance_app/services/geter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greet = "";
  void Greeting() {
    if (DateTime.now().hour >= 4 && DateTime.now().hour <= 12) {
      greet = "Good Morning";
    } else if (DateTime.now().hour >= 12 && DateTime.now().hour <= 16) {
      greet = "Good Afternoon";
    } else {
      greet = "Good Evening";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Greeting();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _head(greet: greet),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 14,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
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
                trailing: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: !geter()[index].buy! ? "+ " : "- ",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17,
                          color: !geter()[index].buy!
                              ? const Color(0xff19BC9B)
                              : Colors.red,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "${"\$" + geter()[index].fee!}",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17,
                          color: !geter()[index].buy!
                              ? const Color(0xff19BC9B)
                              : Colors.red,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
                ));
          }, childCount: geter().length))
        ],
      )),
    );
  }
}

class _head extends StatelessWidget {
  const _head({
    super.key,
    required this.greet,
  });

  final String greet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    color: Color(0xff50C878),
                  ),
                ),
                Positioned(
                    top: 15,
                    right: 20,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notification_add_rounded,
                          color: Colors.white,
                        ))),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        greet,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Simply Best',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 5),
              margin: const EdgeInsets.only(top: 100),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: const BoxDecoration(
                color: Color(0xff19BC9B),
                borderRadius: BorderRadius.all(Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 30,
                      color: Color(0xff19BC9B),
                      offset: Offset(1, 1))
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Balance",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\$2500',
                      style: GoogleFonts.poppins(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Color(0xff50C878),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Income",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_drop_up_rounded,
                                color: Color(0xff50C878),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Expenses",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 53, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$1450",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$520",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
