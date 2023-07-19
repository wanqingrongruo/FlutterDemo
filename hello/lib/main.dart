import 'package:flutter/material.dart';

void main() {
  // 1. runApp
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: HomeWidget()));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flutter"),
        ),
        body: const HomeBody2());
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: false,
              onChanged: (value) {
                print(value);
              }),
          const Text("roni")
        ],
      ),
    );
  }
}

class HomeBody2 extends StatefulWidget {
  const HomeBody2({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody2> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value!;
                });
              }),
          const Text("roni2")
        ],
      ),
    );
  }
}
