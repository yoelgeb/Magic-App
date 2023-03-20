import 'package:flutter/material.dart';
import '../Games Tab/games_icon.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GameIcon(
          date: "Saturday, test, poop butt",
        )
      ],
    );
  }
}
