import 'package:flutter/material.dart';

class GreenContainer extends StatelessWidget {
  GreenContainer({required this.title, required this.ft});
  String title;
  String ft;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ft,
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
          width: 100,
          height: 70,
          color: Color.fromARGB(255, 120, 213, 123),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
