import 'package:demo_video/first_screen.dart';
import 'package:demo_video/second_screen.dart';
import 'package:demo_video/thirst_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  int _page = 0;

  void onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }

  void navigate(int page){
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: PageView(
        children: [
          FirstScreen(),
          SecondScreen(),
          ThirstScreen(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add, color: _page == 0 ? Colors.blue : Colors.white,)),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility, color: _page == 1 ? Colors.blue : Colors.white,)),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo, color: _page == 2 ? Colors.blue : Colors.white,)),
        ],
        onTap: navigate,
      ),
    );
  }
}
