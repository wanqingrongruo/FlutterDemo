import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  final String titleStr;
  const NewRoute({Key? key, required this.titleStr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleStr),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("This is new route"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "我是hhhhhhh");
              },
              child: const Text("返回")),
        ]
      )),
    );
  }
}
