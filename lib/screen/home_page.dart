import 'dart:ui';

import 'package:assesment/core/constents.dart';
import 'package:flutter/material.dart';

import '../widgets/green_container.dart';
import '../widgets/slider_num.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(10.0),
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
              const Text(
                "Solid Water Status",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.7),
              ),
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
              Column(
                children: [
                  kheight20,
                  Text("Forcast - Next 0 days"),
                  Slider(
                      activeColor: Colors.red,
                      inactiveColor: Colors.yellow,
                      value: rating,
                      onChanged: (newRating) {
                        setState(() => rating = newRating);
                      }),
                  Container(
                    width: 300,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SliderNum(num: "0"),
                        kwidth20,
                        SliderNum(num: "1"),
                        kwidth20,
                        SliderNum(num: "2"),
                        kwidth20,
                        SliderNum(num: "3"),
                        kwidth20,
                        SliderNum(num: "4"),
                        kwidth20,
                        SliderNum(num: "5"),
                        kwidth20,
                        SliderNum(num: "6"),
                        kwidth20,
                        SliderNum(num: "7"),
                        kwidth20,
                        SliderNum(num: "8"),
                        kwidth20,
                        SliderNum(num: "9"),
                      ],
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 185,
          height: 135,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 255, 238, 80),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Water in Profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "8.78\"",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "72% Full",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 185,
          height: 135,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 255, 238, 80),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "To Refill Profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "3.46\"",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 208, 100))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
