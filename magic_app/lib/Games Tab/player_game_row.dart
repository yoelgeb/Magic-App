import 'package:flutter/material.dart';

class PlayerGameRow extends StatefulWidget {
  final String? matchID;
  final String? deckID;
  final bool? winner;

  const PlayerGameRow({super.key, this.matchID, this.deckID, this.winner});

  @override
  State<PlayerGameRow> createState() => _PlayerGameRowState();
}

class _PlayerGameRowState extends State<PlayerGameRow> {
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}
