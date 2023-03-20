import 'package:flutter/material.dart';

class RankingsPage extends StatefulWidget {
  const RankingsPage({Key? key}) : super(key: key);

  @override
  State<RankingsPage> createState() => _RankingsPageState();
}

class _RankingsPageState extends State<RankingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Rankings'));
  }
}