import 'dart:developer';

import 'package:assesment/core/constents.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderDivision extends StatefulWidget {
  const SliderDivision({Key? key}) : super(key: key);

  @override
  State<SliderDivision> createState() => _SliderDivisionState();
}

class _SliderDivisionState extends State<SliderDivision> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Forecast - Next ${_currentSliderValue.toInt()} Days",
            style: titleGrey),
        SfSlider(
          value: _currentSliderValue,
          min: 0.0,
          max: 7,
          interval: 1,
          showTicks: true,
          showLabels: true,
          activeColor: Colors.red,
          inactiveColor: Colors.yellow,
          // label: _currentSliderValue.round().toString(),
          onChanged: (value) {
            setState(() {
              _currentSliderValue = value;
              log(_currentSliderValue.toString());
            });
          },
        ),
      ],
    );
  }
}
