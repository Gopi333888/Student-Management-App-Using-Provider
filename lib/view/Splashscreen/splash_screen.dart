import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:studentmanagement_provider/view/student_list_screen.dart/student_list_screen.dart';

class SplashScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Lottie.asset('asset/lottie/Animation - 1707462913715.json',
                  width: 250, height: 250)),
          Text(
            "Students Campus",
            style: GoogleFonts.oswald(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 215, 187, 215)),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const StudentListScreen(),
      splashIconSize: 500,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
