import 'package:finance_app/pages/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/', (route) => false);
    });
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splash.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                'assets/images/investment.png',
                color: const Color(0xff19BC9B),
                height: 70,
              )),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "Money  ".toUpperCase(),
                    style: GoogleFonts.grenzeGotisch(
                        fontSize: 28, color: const Color(0xff50C878)),
                  ),
                  TextSpan(
                    text: "Mate",
                    style:
                        GoogleFonts.tektur(fontSize: 25, color: Colors.black),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
