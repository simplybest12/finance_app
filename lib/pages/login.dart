import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                colors: [
                  Color(0xff37a329),
                  Color(0xff1a661c),
                  Color(0xff0e4813)
                ],
                stops: [0, 0.5, 1],
                center: Alignment.center,
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/investmentc.png',
                          color: Color(0xff50C878),
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Money\n".toUpperCase(),
                              style: GoogleFonts.grenzeGotisch(
                                  fontSize: 30, color: Color(0xff50C878)),
                            ),
                            TextSpan(
                              text: "Mate",
                              style: GoogleFonts.tektur(
                                  fontSize: 23, color: Colors.black),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                // Text("Welcome Back!",style: GoogleFonts.aboreto(
                // fontSize: 25,
                // color: Color(0xff50C878)
                // ),)
              ],
            ),
          ],
        ),
      )),
    );
  }
}
