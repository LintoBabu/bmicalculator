import 'package:flutter/material.dart';

class rightBar extends StatelessWidget {
  final double barWidth;
  const rightBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(5),
              ),
              color: Colors.orange
          ),
        )
      ],
    );
  }
}
