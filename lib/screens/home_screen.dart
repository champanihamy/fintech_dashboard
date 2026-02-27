import 'package:flutter/material.dart';
import 'package:interview_test/screens/dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String pageId = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _pages = [
    DashboardScreen(), // The home screen we built
    Center(child: Text("Transactions")),
    Center(child: Text("Notifications")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.credit_card, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(index: _currentIndex, children: _pages),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _currentIndex == index ? Colors.blue : Colors.grey,
      ),
      onPressed: () => setState(() => _currentIndex = index),
    );
  }

  Widget _buildBottomNav() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.grid_view_rounded, 0),
          _buildNavItem(Icons.chat_bubble_rounded, 1),
          SizedBox(width: 40),
          _buildNavItem(Icons.notifications_rounded, 2),
          _buildNavItem(Icons.person_2_rounded, 3),
        ],
      ),
    );
  }
}
