import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int bottomMenuIndex;
  final Function(int) onTabTapped;

  const CustomBottomBar({
    Key? key,
    required this.bottomMenuIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomMenuIndex,
      selectedFontSize: 12,
      selectedItemColor: Colors.orange[600],
      onTap: onTabTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_basketball),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stacked_bar_chart_sharp),
          label: 'Negócios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
