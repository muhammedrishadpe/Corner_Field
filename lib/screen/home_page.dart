import 'package:flutter/material.dart';

import '../widgets/green_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Zone 3",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                "Solid Water Status",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //greenContainer
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GreenContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    GreenContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    GreenContainer(),
                  ],
                ),
                //YelloBorderContainer
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 80,
                      color: Colors.red,
                    )
                  ],
                )
              ]),
            ]),
      ),
    );
  }
}
