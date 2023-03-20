import 'package:flutter/material.dart';

class DecksPage extends StatefulWidget {
  const DecksPage({Key? key}) : super(key: key);

  @override
  State<DecksPage> createState() => _DecksPageState();
}

class _DecksPageState extends State<DecksPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Decks'));
  }
}