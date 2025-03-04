import 'package:flutter/material.dart';
import 'package:hassan_project/models/task.dart';

class TaskView extends StatefulWidget {
  TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<TaskModel> taskList = [
    TaskModel(name: 'First', image: 'assets/images/1.png'),
    TaskModel(name: 'Second', image: 'assets/images/Group-1.png'),
    TaskModel(name: 'Third', image: 'assets/images/Group-2.png'),
    TaskModel(name: 'Fourth', image: 'assets/images/Group-3.png'),
    TaskModel(name: 'Fifth', image: 'assets/images/Group.png'),
  ];

  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task View"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.8),
          itemCount: taskList.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  if (selectedIndex.contains(i)) {
                    selectedIndex.remove(i);
                  } else {
                    selectedIndex.add(i);
                  }
                  setState(() {});
                },
                child: Container(
                  color:selectedIndex.contains(i)?Colors.yellow: Colors.blue,
                  child: Row(
                    children: [
                      Image.asset(
                        taskList[i].image.toString(),
                        height: 20,
                        width: 20,
                      ),
                      Text(taskList[i].name.toString()),
                      Icon(Icons.star)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
