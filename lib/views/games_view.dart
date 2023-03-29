import 'package:flutter/material.dart';
import 'package:nba_info/custom_bottom_bar.dart';
import 'package:nba_info/views/profile_view.dart';
import 'dashboard_view.dart';
import 'package:nba_info/views/stats_view.dart';

class GamesView extends StatefulWidget {
  const GamesView({super.key});

  @override
  State<GamesView> createState() => _GamesViewState();
}

class _GamesViewState extends State<GamesView> {
  static const List<Widget> _bottomMenuViews = [
    DashboardView(),
    GamesView(),
    StatsView(),
    ProfileView()
  ];
  int bottomMenuIndex = 1;
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
