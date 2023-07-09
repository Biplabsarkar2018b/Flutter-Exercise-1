import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uu/responsive/mobile_screen_lay.dart';
import 'package:uu/responsive/responsive_screen.dart';
import 'package:uu/responsive/web_screen_lay.dart';
import 'package:uu/screens/home_screen.dart';
import 'package:uu/screens/login_screen.dart';
import 'package:uu/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      title: 'Social',
      //   home: Responsiveness(
      //       webScreenLay: WebScreenLay(), mobileScreenLay: MobileScreenLay()),
      // );
      home: SignUpScreen(),
    );
  }
}
