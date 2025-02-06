import 'package:flutter/material.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
      ),
      body: Column(
        children: [
          Text(
            "First Text",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10,),
          Text("Second Text",style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.add),
            Icon(Icons.add),
Column(
  children: [

    Icon(Icons.add),

    Icon(Icons.add),
Row(children: [

  Icon(Icons.add),

  Icon(Icons.add),
Column(children: [

  Icon(Icons.add),

  Icon(Icons.add),

  Icon(Icons.add),

  Icon(Icons.add),
],)
],),

    Icon(Icons.add),

  ],
),
            Icon(Icons.add),
          ],)
        ],
      ),
    );
  }
}
