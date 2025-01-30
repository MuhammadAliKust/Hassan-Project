import 'package:flutter/material.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Row(
        children: [
          Text(
            "First Text",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Second Text",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Third Text",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
