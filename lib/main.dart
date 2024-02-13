import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentmanagement_provider/view/Splashscreen/splash_screen.dart';
import 'package:studentmanagement_provider/viewmodel/student_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StudentProvider(),
        )
      ],
      child: const MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
