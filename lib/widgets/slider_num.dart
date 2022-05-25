import 'package:flutter/material.dart';

class SliderNum extends StatelessWidget {
  String num;
  SliderNum({required this.num});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 2,
          height: 10,
          color: Colors.grey,
        ),
        Text(num),
      ],
    );
  }
}
