import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("商品列表"),
      ),
      body: const HomeContent("我是一个好人"),
    );
  }
}

class HomeContent extends StatefulWidget {
  final String message;
  const HomeContent(this.message, {super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButton(),
          Text(
            "当前计数: $_counter",
            style: const TextStyle(fontSize: 20),
          ),
          Text(widget.message)
        ],
      ),
    );
  }

  Widget _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.red),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero))),
          child: const Text("+",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.pink),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero))),
          child: const Text("-",
              style: TextStyle(fontSize: 20, color: Colors.white)),
          onPressed: () {
            setState(() {
              _counter--;
            });
          },
        )
      ],
    );
  }
}
