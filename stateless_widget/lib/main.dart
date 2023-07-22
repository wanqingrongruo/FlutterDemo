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
      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardCell(CardModel("Card1", "index 1",
            "http://pic1.win4000.com/wallpaper/8/543cec1594c3f.jpg")),
        CardCell(CardModel("Card2", "index 2",
            "http://pic1.win4000.com/wallpaper/8/543cec1594c3f.jpg")),
        CardCell(CardModel("Card3", "index 3",
            "http://pic1.win4000.com/wallpaper/8/543cec1594c3f.jpg")),
        CardCell(CardModel("Card4", "index 4",
            "http://pic1.win4000.com/wallpaper/8/543cec1594c3f.jpg"))
      ],
    );
  }
}

class CardCell extends StatelessWidget {
  final CardModel cardModel;

  const CardCell(this.cardModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration:
            BoxDecoration(border: Border.all(width: 5, color: Colors.purple)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cardModel.title,
                style: const TextStyle(fontSize: 25, color: Colors.orange)),
            const SizedBox(height: 8),
            Text(cardModel.desc,
                style: const TextStyle(fontSize: 20, color: Colors.blue)),
            const SizedBox(height: 8),
            Image.network(cardModel.previewUrl)
          ],
        ));
  }
}

class CardModel {
  String title;
  String desc;
  String previewUrl;

  CardModel(this.title, this.desc, this.previewUrl);
}
