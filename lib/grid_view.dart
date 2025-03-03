import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Demo"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
          itemCount: 30,
          itemBuilder: (context, i) {
            return FlutterLogo();
          }),
    );
  }
}
