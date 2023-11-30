import 'package:dokterian/chat.dart';
import 'package:dokterian/home.dart';
import 'package:dokterian/profile.dart';
import 'package:dokterian/schedule.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Navigation());
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  late PageController _pageController;
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Schedule(),
    const Chat(),
    const Profile(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 8,
            activeColor: Colors.cyan,
            backgroundColor: Colors.white,
            tabBackgroundColor: Colors.cyan.shade50,
            padding: const EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              });
            },
            tabs: const [
              GButton(
                  icon: Icons.home,
                  iconColor: Colors.black54,
                  iconActiveColor: Colors.cyan,
                  text: 'Home'),
              GButton(
                  icon: Icons.schedule,
                  iconColor: Colors.black54,
                  iconActiveColor: Colors.cyan,
                  text: 'Schedule'),
              GButton(
                  icon: Icons.chat,
                  iconColor: Colors.black54,
                  iconActiveColor: Colors.cyan,
                  text: 'Chat'),
              GButton(
                  icon: Icons.person,
                  iconColor: Colors.black54,
                  iconActiveColor: Colors.cyan,
                  text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
