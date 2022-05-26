import 'package:flutter/material.dart';

import '../screen/widgets/slider_division.dart';
import '../screen/widgets/green_container.dart';
import './widgets/bottom_container.dart';
import './widgets/profile_container.dart';
import '../core/constents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/left-arrow.png',
            width: 20,
          ),
          onPressed: () {
// Appbar button
          },
        ),
        centerTitle: true,
        title: const Text(
          "Corner Field",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
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
                      Stack(
                        children: [
                          Container(
                              height: 100,
                              padding: const EdgeInsets.only(top: 20),
                              child:
                                  GreenContainer(title: "2.48\"", ft: "1 ft")),
                          const Positioned(
                            top: 0,
                            right: 40,
                            bottom: 55,
                            child: ImageIcon(
                              AssetImage(
                                "assets/icons/potato-plant.png",
                              ),
                              size: 50,
                              color: Colors.green,
                            ),
                          ),
                          const Positioned(
                            top: 0,
                            right: 0,
                            bottom: 55,
                            child: ImageIcon(
                              AssetImage(
                                "assets/icons/potato-plant.png",
                              ),
                              size: 50,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      kheight20,
                      GreenContainer(title: "3.19\"", ft: "2 ft"),
                      kheight20,
                      GreenContainer(title: "3.11\"", ft: "3 ft"),
                    ],
                  ),
                  //YelloBorderContainer
                  const ProfileContainer()
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
