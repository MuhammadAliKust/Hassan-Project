import 'package:flutter/material.dart';
import 'package:hassan_project/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              user.getName().toString(),
              style: TextStyle(fontSize: 40),
            ),Text(
              user.getEmail().toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back to Screen A")),
          ],
        ),
      ),
    );
  }
}
