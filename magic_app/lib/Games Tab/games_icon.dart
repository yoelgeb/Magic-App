import 'package:flutter/material.dart';
import 'package:magic_app/Games Tab/player_game_row.dart';

// ignore: must_be_immutable
class GameIcon extends StatefulWidget {
  String? date;

  // Saved when I get database connections up
  // String? matchID;

  GameIcon({super.key, required this.date});

  @override
  State<GameIcon> createState() => _GameIconState();
}

class _GameIconState extends State<GameIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xFF536878),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(widget.date!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white)),
          PlayerGameRow(
            deckID: "Temp Deck Name",
            colors: const ['W', 'B'],
            winner: false,
          ),
          PlayerGameRow(
            deckID: "These nuts",
            colors: const ['W', 'U', 'B', 'R', 'G'],
            winner: true,
          ),
          PlayerGameRow(
            deckID: "Bornana",
            colors: const ['Colorless'],
            winner: false,
          ),
          PlayerGameRow(
            deckID: "poop",
            colors: const ['W', 'R', 'G'],
            winner: false,
          ),
        ],
      ),
    );
  }
}
