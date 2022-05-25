import 'package:flutter/material.dart';

import '../../core/constents.dart';
import 'water_in_out.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kheight20,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WaterInOut(
                imgIcon: AssetImage(
                  "assets/icons/water-resistant.png",
                ),
                title: "Water Out",
                num: "0.19\"",
              ),
              kheight20,
              WaterInOut(
                imgIcon: AssetImage(
                  "assets/icons/water-resistant.png",
                ),
                title: "Water Out",
                num: "0.19\"",
              ),
            ],
          ),
          kwidth20,
          Container(
              width: 210,
              height: 250,
              decoration: kDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  kheight10,
                  Text(
                    "Water Need",
                    style: titleGrey,
                  ),
                  kheight10,
                  ImageIcon(
                    AssetImage("assets/icons/hydroponic-gardening.png"),
                    size: 90,
                  ),
                  kheight10,
                  Text(
                    "3.65\"",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  kheight10,
                ],
              ))
        ],
      ),
    );
  }
}
