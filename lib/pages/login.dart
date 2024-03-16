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
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "Money  ".toUpperCase(),
                    style: GoogleFonts.grenzeGotisch(
                        fontSize: 28, color: Color(0xff50C878)),
                  ),
                  TextSpan(
                    text: "Mate",
                    style:
                        GoogleFonts.tektur(fontSize: 25, color: Colors.black),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff50C878),
                      spreadRadius: 7,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    )
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
