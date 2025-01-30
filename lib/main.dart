import 'package:flutter/material.dart';
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
    home: RowColumnView(),
    );
  }
}
