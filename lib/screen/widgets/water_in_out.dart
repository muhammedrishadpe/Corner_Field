import 'package:flutter/material.dart';

import '../../core/constents.dart';

class WaterInOut extends StatelessWidget {
  ImageProvider imgIcon;
  String title;
  String num;
  WaterInOut({required this.imgIcon, required this.title, required this.num});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 110,
      decoration: kDecoration,
      child: Column(children: [
        kheight10,
        Text(
          title,
          style: titleGrey,
        ),
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              imgIcon,
              size: 40,
            ),
            kwidth20,
            Text(
              num,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w700),
            ),
          ],
        )
      ]),
    );
  }
}
