import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xFFA4B7C4),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text(widget.date!,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
