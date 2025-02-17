import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Card(
              elevation: 10,
              color: selectedIndex == i ? Colors.green : Colors.white,
              child: ListTile(
                onTap: () {
                  selectedIndex = i;
                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                title: Text("Selected Index: $selectedIndex"),
                subtitle: Text("Loop Index: $i"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }),
    );
  }
}
