import 'package:flutter/cupertino.dart';
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    // alignment: Alignment.topLeft,
                    width: MediaQuery.of(context)
                        .size
                        .width, // Set width larger than screen width
                    height: 120, // Set height as half of the diameter
                    decoration: const BoxDecoration(
                        color: Color(0xff19BC9B),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 7,
                              blurRadius: 35,
                              color: Color(0xff19BC9B),
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(700, 300),
                          bottomRight: Radius.elliptical(700, 300),
                        )),
                  ),
                  Positioned(
                    // top: 50,
                    bottom: 35,
                    left: MediaQuery.of(context).size.width * 0.43,
                    child: Center(
                      child: Image.asset(
                        'assets/images/investment.png',
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text("Good to see you Back!",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff50C878),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 18,
                    ),
                    Text("Login".toUpperCase(),
                        style: GoogleFonts.poppins(
                            color: const Color(0xff50C878),
                            fontSize: 25,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              ),

              // const SizedBox(
              //   height: 80,
              // ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        style: GoogleFonts.capriola(
                            color: const Color(0xff50C878), fontSize: 13),
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              CupertinoIcons.profile_circled,
                              size: 20,
                            ),
                            contentPadding: const EdgeInsets.all(12),
                            labelText: "Username",
                            labelStyle: GoogleFonts.capriola(
                                color: Colors.grey, fontSize: 13),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                color: Color(0xff50C878),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        style: GoogleFonts.capriola(
                            color: const Color(0xff50C878), fontSize: 13),
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              CupertinoIcons.lock_fill,
                              size: 20,
                            ),
                            contentPadding: const EdgeInsets.all(12),
                            labelText: "Password",
                            labelStyle: GoogleFonts.capriola(
                                color: Colors.grey, fontSize: 13),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                color: Color(0xff50C878),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forget Password!",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.red,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 350,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, 'bottom', (route) => false);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: const Color(0xff19BC9B)),
                          child: Text(
                            "Login",
                            style: GoogleFonts.geologica(
                                color: Colors.white, fontSize: 18),
                          )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text("Don't have an account?",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text("Register with us.",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff50C878),
                              fontSize: 11,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
//  CustomPaint(
//                 painter: SemiCirclePainter(color: Colors.blue),
//               ),