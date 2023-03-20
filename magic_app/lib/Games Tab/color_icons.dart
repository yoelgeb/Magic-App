import 'dart:ffi';
import 'package:flutter/material.dart';

class ColorIcons extends StatefulWidget {
  final List<Char> colors;

  const ColorIcons({super.key, required this.colors});

  @override
  State<ColorIcons> createState() => _ColorIconsState();
}

class _ColorIconsState extends State<ColorIcons> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
