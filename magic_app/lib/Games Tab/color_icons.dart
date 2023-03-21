import 'package:flutter/material.dart';

class ColorIcons extends StatefulWidget {
  final List<String> colors;

  const ColorIcons({super.key, required this.colors});

  @override
  State<ColorIcons> createState() => _ColorIconsState();
}

class _ColorIconsState extends State<ColorIcons> {
  Widget colorTemplate(Color colorType) {
    return Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(color: colorType, shape: BoxShape.circle));
  }

  List<Widget> createColors(List<String> colors) {
    List<Widget> widgetColors = [];

    if (colors[0] == "Colorless") {
      widgetColors.add(colorTemplate(Colors.grey));
    } else {
      for (int i = 0; i < colors.length; i++) {
        if (colors[i] == 'W') {
          widgetColors.add(colorTemplate(Colors.white));
        } else if (colors[i] == 'U') {
          widgetColors.add(colorTemplate(Colors.blue));
        } else if (colors[i] == 'B') {
          widgetColors.add(colorTemplate(Colors.black));
        } else if (colors[i] == 'R') {
          widgetColors.add(colorTemplate(Colors.red));
        } else if (colors[i] == 'G') {
          widgetColors.add(colorTemplate(Colors.green));
        }
        widgetColors.add(const SizedBox(width: 2));
      }
    }
    return widgetColors;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: createColors(widget.colors),
      ),
    );
  }
}
