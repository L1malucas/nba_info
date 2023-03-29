import 'package:flutter/material.dart';
import 'package:nba_info/views/dashboard_view.dart';
import 'dart:async';

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
          primarySwatch: Colors.orange,
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
      const Duration(milliseconds: 4625),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              // builder: (context) => const IntroView(),
              builder: (context) => const DashboardView(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Image(
      fit: BoxFit.fill,
      image: AssetImage('assets/images/splash_screen.webp'),
    ));
  }
}
