// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'color_icons.dart';

class PlayerGameRow extends StatefulWidget {
  final String? matchID;
  final String? deckID;
  final bool? winner;
  final List<String> colors;
  //final int? newELO;
  //final int? previousELO;

  PlayerGameRow({
    super.key,
    this.matchID,
    this.deckID,
    this.winner,
    this.colors = const [],
    //this.newELO,
    //this.previousELO
  });

  @override
  State<PlayerGameRow> createState() => _PlayerGameRowState();
}

class _PlayerGameRowState extends State<PlayerGameRow> {
  @override
  Widget build(BuildContext context) {
    String eloChange = '-';
    if (widget.winner!) eloChange = '+';

    Widget winnerWidget(bool winner) {
      if (winner) {
        return Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: const Color(0xFFE0A526),
                borderRadius: BorderRadius.circular(5)),
            child: const Text(
              ' Winner ',
              style: TextStyle(
                color: Colors.white,
              ),
            ));
      } else {
        return const SizedBox.shrink();
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.deckID!, style: const TextStyle(color: Colors.white)),
              winnerWidget(widget.winner!),
              ColorIcons(colors: widget.colors)
            ],
          ),
          Column(
            children: [
              const Text('1000.00', style: TextStyle(color: Colors.white)),
              Text(
                '${eloChange}50.00 ',
                style: TextStyle(
                    color: widget.winner! ? Colors.green : Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              )
            ],
          )
        ],
      ),
    );
  }
}
