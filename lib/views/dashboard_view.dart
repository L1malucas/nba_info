import 'package:flutter/material.dart';
import 'package:nba_info/custom_bottom_bar.dart';
import 'package:nba_info/views/games_view.dart';
import 'package:nba_info/views/home_view.dart';
import 'package:nba_info/views/profile_view.dart';
import 'package:nba_info/views/stats_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  static const List<Widget> _bottomMenuViews = [
    DashboardView(),
    GamesView(),
    StatsView(),
    ProfileView()
  ];
  int bottomMenuIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeView(),
      bottomNavigationBar: CustomBottomBar(
          bottomMenuIndex: bottomMenuIndex, onTabTapped: onTabTapped),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => _bottomMenuViews[index],
          ));
    });
  }
}
