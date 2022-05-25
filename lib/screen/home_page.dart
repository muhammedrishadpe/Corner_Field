import 'dart:ui';
import 'package:assesment/screen/widgets/water_in_out.dart';
import 'package:flutter/material.dart';

import 'package:assesment/core/constents.dart';
import '../screen/widgets/slider_division.dart';

import '../screen/widgets/green_container.dart';
import 'widgets/bottom_container.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              BottomContainer()
            ]),
      ),
    );
  }
}
