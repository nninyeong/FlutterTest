import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('외부라이브러리 사용해보기'),
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              centerTitle: true),
          body: const Body())));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map((word) =>
            Text(word.asCamelCase, style: const TextStyle(fontSize: 32)))
        .toList();
    return Column(
      children: widgets,
    );
  }
}
