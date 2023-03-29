import 'package:flutter/material.dart';
import 'package:nba_info/views/games_view.dart';
import 'package:nba_info/views/profile_view.dart';
import 'dashboard_view.dart';

import '../custom_bottom_bar.dart';

class StatsView extends StatefulWidget {
  const StatsView({super.key});

  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
  int bottomMenuIndex = 2;
  static const List<Widget> _bottomMenuViews = [
    DashboardView(),
    GamesView(),
    StatsView(),
    ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
