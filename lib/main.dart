import 'package:flutter/material.dart';
import 'package:hassan_project/asset_image.dart';
import 'package:hassan_project/dynamic_list_view.dart';
import 'package:hassan_project/grid_view.dart';
import 'package:hassan_project/list_tile.dart';
import 'package:hassan_project/list_view_demo.dart';
import 'package:hassan_project/login.dart';
import 'package:hassan_project/multiple_selection.dart';
import 'package:hassan_project/network_image.dart';
import 'package:hassan_project/page_view.dart';
import 'package:hassan_project/row_column_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: GridViewDemo(),
    );
  }
}
