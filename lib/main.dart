import 'package:flutter/material.dart';
import 'dart:async';

import 'views/intro_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B2B',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: 'Roboto',
          useMaterial3: true),
      home: const SplashScreenView(),
    );
  }
}

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const IntroView(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Image(
      image: AssetImage('assets/images/splash_screen.png'),
    ));
  }
}
