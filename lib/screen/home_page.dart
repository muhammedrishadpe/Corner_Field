import 'package:flutter/material.dart';

import 'package:assesment/core/constents.dart';
import '../screen/widgets/slider_division.dart';

import '../screen/widgets/green_container.dart';
import 'widgets/profile_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_left,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Corner Field",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            kheight20,
            const Text(
              "Zone 3",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Solid Water Status", style: titleGrey),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //greenContainer
                  Column(
                    children: [
                      kheight10,
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(
                              "assets/icons/pngwing.com(1).png",
                            ),
                            size: 40,
                          ),
                          ImageIcon(
                            AssetImage(
                              "assets/icons/pngwing.com(1).png",
                            ),
                            size: 40,
                          ),
                        ],
                      ),
                      GreenContainer(title: "2.48\"", ft: "1 ft"),
                      kheight20,
                      GreenContainer(title: "3.19\"", ft: "2 ft"),
                      kheight20,
                      GreenContainer(title: "3.11\"", ft: "3 ft"),
                    ],
                  ),
                  //YelloBorderContainer
                  ProfileContainer()
                ]),
            kheight20,
            SliderDivision(),
            kheight10,
            //Bottom

            BottomContainer(),
          ]),
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 120,
              height: 85,
              decoration: kDecoration,
              child: Column(
                children: [
                  kheight10,
                  Text(
                    "Water Out",
                    style: titleGrey,
                  ),
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
                      Text(
                        "0.19\"",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 22),
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
              height: 85,
              decoration: kDecoration,
              child: Column(
                children: [
                  kheight10,
                  Text(
                    "Water In",
                    style: titleGrey,
                  ),
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
                      Text(
                        "0.0\"",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 22),
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
              width: 190,
              height: 185,
              decoration: kDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kheight10,
                  Text(
                    "Water Needs",
                    style: titleGrey,
                  ),
                  kwidth10,
                  ImageIcon(
                    AssetImage(
                      "assets/icons/rain.png",
                    ),
                    size: 87,
                  ),
                  Text(
                    "3.65\"",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  kwidth10,
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
