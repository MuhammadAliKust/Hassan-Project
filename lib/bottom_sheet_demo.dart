import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                   return Container(
                     width: MediaQuery.of(context).size.width,
                     height: 100,
                     child: Column(children: [
                       Text("This is first text"),
                       Text("This is second text"),
                     ],),
                   );
                  });
            },
            child: Text("Show Bottom Sheet")),
      ),
    );
  }
}
