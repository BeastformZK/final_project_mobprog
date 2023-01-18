import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_project_mobprog/Screens/home_page.dart';
import 'package:final_project_mobprog/Screens/library_page.dart';
import 'package:final_project_mobprog/Screens/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  late final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const Homepage(),
    const LibraryPage(),
    const SettingsPage()
  ];

  late int _selectedIndex = 0;

  /// converting bottom-icons into indexes which it will start from 0 - recent
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// Everytime you will press bottom navigation icon, it will route to next page
  void _onItemTap(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTap,
        items: [
          BottomNavyBarItem(
            activeColor: Colors.grey,
            title: Text(
              'Home',
              style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            ),
            icon: Icon(Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
          ),
          BottomNavyBarItem(
            activeColor: Colors.grey,
            title: Text(
              'Home',
              style: TextStyle(
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
            ),
            icon: Icon(Icons.library_books_rounded,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
          ),
          BottomNavyBarItem(
            activeColor: Colors.grey,
            title: Text(
              'Library',
              style: TextStyle(
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
            ),
            icon: Icon(Icons.settings,
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }
}
