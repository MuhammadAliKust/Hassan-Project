import 'package:flutter/material.dart';
import 'package:hassan_project/asset_image.dart';
import 'package:hassan_project/login.dart';
import 'package:hassan_project/row_column_view.dart';

class BottomBarViewDemo extends StatefulWidget {
  BottomBarViewDemo({super.key});

  @override
  State<BottomBarViewDemo> createState() => _BottomBarViewDemoState();
}

class _BottomBarViewDemoState extends State<BottomBarViewDemo> {
  int selectedIndex = 0;

  List<Widget> screenList = [LoginView(), RowColumnView(), AssetImageView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
