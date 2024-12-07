import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomnavigationBarMyWidget extends StatefulWidget {
  const BottomnavigationBarMyWidget({super.key});

  @override
  _BottomnavigationBarMyWidgetState createState() =>
      _BottomnavigationBarMyWidgetState();
}

class _BottomnavigationBarMyWidgetState
    extends State<BottomnavigationBarMyWidget> {
  int _selectedIndex = 0;

  // Sample menu items
  final List<Map<String, String>> menuItems = [
    {'icon': '../assets/home.svg', 'label': 'Home'},
    {'icon': '../assets/search.svg', 'label': 'Search'},
    {'icon': '../assets/settings.svg', 'label': 'Settings'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Text('Index Selected: $_selectedIndex',
            style: const TextStyle(fontSize: 24)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: SvgPicture.asset(
                i['icon'] ??
                    '../assets/home.svg', // Provide a fallback value if icon is null
                color: Colors.white,
                width: 25,
                height: 25,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'] ??
                  'assets/home.svg', // Provide a fallback value here too
              color: Colors.grey,
              width: 25,
              height: 25,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}