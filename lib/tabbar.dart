import 'package:flutter/material.dart';
import 'package:hassan_project/asset_image.dart';
import 'package:hassan_project/login.dart';
import 'package:hassan_project/row_column_view.dart';

class TabbarDemo extends StatelessWidget {
  const TabbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(tabs: [
            Text("Home"),
            Text("Favorite"),
            Text("Profiile"),
          ]),
        ),
        body: TabBarView(children: [
          LoginView(),
          AssetImageView(),
          RowColumnView()
        ]),

      ),
    );
  }
}
