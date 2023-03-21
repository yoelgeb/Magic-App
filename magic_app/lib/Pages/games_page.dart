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
    return SingleChildScrollView(
      child: Column(
        children: [
          GameIcon(date: "Saturday, test, poop butt"),
          GameIcon(date: "9/11 10:pm"),
          GameIcon(date: "idk a cool date and time"),
          GameIcon(date: "Saturday, test, poop butt"),
        ],
      ),
    );
  }
}
