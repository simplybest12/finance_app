import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Center(
                  child: LottieBuilder.asset(
                    'assets/lottie/welcome.json',
                    height: 600,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Plan before your\n".toUpperCase(),
                        style: GoogleFonts.gabriela(
                            fontSize: 35, color: Colors.black),
                      ),
                      TextSpan(
                        text: "SPend".toUpperCase(),
                        style: GoogleFonts.gabriela(
                            fontSize: 35, color: Color(0xff50C878)),
                      ),
                    ]),
                  ),
                  Divider(),
                  Text(
                    "The ultimate app to track your expense".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                width: 350,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'login', (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Color(0xff50C878)),
                    child: Text(
                      "Lets Start",
                      style: GoogleFonts.geologica(
                          color: Colors.white, fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
