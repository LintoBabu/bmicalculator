import 'package:flutter/material.dart';

class leftBar extends StatelessWidget {
  final double barWidth;
  const leftBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(5),
            ),
            color: Colors.orange
          ),
        )
      ],
    );
  }
}
