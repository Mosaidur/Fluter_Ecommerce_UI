import 'package:flutter/material.dart';

class ColorsOfProduct extends StatelessWidget {
  ColorsOfProduct({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.blue,
      Colors.black,
      Colors.green,
      Colors.red,
      Colors.indigo,
      Colors.cyan,
      Colors.teal
    ];

    List<Widget> coloredCircles = [];
    for (int i = 0; i < colors.length; i++) {
      Color color = colors[i];

      coloredCircles.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 8,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: coloredCircles,
      ),
    );
  }
}
