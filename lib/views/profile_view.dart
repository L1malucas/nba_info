import 'package:flutter/material.dart';
import 'package:nba_info/views/games_view.dart';
import 'package:nba_info/views/stats_view.dart';

import '../custom_bottom_bar.dart';
import 'dashboard_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int bottomMenuIndex = 3;
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
