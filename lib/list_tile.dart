import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: Card(
        elevation: 10,
        color: Colors.green,
        child: ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notification Title"),
          subtitle: Text("Notificatino Sub Title"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}

