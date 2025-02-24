import 'package:flutter/material.dart';
import 'package:hassan_project/models/notification.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First ', description: 'First Description', time: '12:45'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description',
        time: '1:45'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description',
        time: '11:45'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.notifications),
              title: Text(notificationList[i].title),
              subtitle: Text(notificationList[i].description),
              trailing: Text(notificationList[i].time.toString()),
            );
          }),
    );
  }
}
