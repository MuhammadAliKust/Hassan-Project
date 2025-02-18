import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

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
              color: selectedIndex.contains(i)
                  ? Colors.green : Colors.white,
              child: ListTile(
                onTap: () {
                  if(selectedIndex.contains(i)){
                    selectedIndex.remove(i);
                  }else{
                    selectedIndex.add(i);
                  }

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
