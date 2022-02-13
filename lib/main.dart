import 'package:english_words/english_words.dart' as eng;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My flutter app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('startup names'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              RandomWords(),
            ],
          ),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {

  const RandomWords({Key? key}) : super(key: key);
  
  @override
  State<RandomWords> createState() => _RandomWordsState(); 
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = eng.WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}