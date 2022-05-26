import 'package:flutter/material.dart';

import '../../core/constents.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: size.height,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 120,
                  height: 95,
                  decoration: kDecoration,
                  child: Column(
                    children: [
                      kheight10,
                      Text(
                        "Water Out",
                        style: titleGrey,
                      ),
                      kheight10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          kwidth10,
                          ImageIcon(
                            AssetImage(
                              "assets/icons/water-rate.png",
                            ),
                            size: 37,
                          ),
                          kwidth10,
                          Text(
                            "0.19\"",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          kwidth10,
                        ],
                      )
                    ],
                  ),
                ),
                kheight10,
                Container(
                  // padding: EdgeInsets.all(),

                  width: 120,
                  height: 95, decoration: kDecoration,
                  child: Column(
                    children: [
                      kheight10,
                      Text(
                        "Water In",
                        style: titleGrey,
                      ),
                      kheight10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          kwidth10,
                          ImageIcon(
                            AssetImage(
                              "assets/icons/rain.png",
                            ),
                            size: 40,
                          ),
                          kwidth10,
                          Text(
                            "0.0\"",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          kwidth10,
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            kwidth20,
            //water need
            Column(
              children: [
                Container(
                  width: 230,
                  height: 200,
                  decoration: kDecoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      kheight10,
                      Text(
                        "Water Needs",
                        style: titleGrey,
                      ),
                      kwidth20,
                      ImageIcon(
                        AssetImage(
                          "assets/icons/hydroponic-gardening.png",
                        ),
                        size: 87,
                      ),
                      Text(
                        "3.65\"",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 27),
                      ),
                      kwidth10,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
