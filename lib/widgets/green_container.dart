import 'package:flutter/material.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "1 ft",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          height: 45,
          color: Colors.green,
          child: Center(
            child: Text(
              "2.48",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
