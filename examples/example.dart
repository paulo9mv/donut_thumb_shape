import 'package:flutter/material.dart';
import 'package:donut_thumb_shape/donut_thumb_shape.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
          overlayColor: Colors.transparent,
          thumbColor: Colors.white,
          activeTrackColor: Color.fromRGBO(102, 0, 78, 1),
          inactiveTrackColor: Colors.white,
          tickMarkShape: SliderTickMarkShape.noTickMark,
          thumbShape: DonutThumbShape(
              insideCircleRadius: 4,
              outsideCircleRadius: 9,
              outsideCircleColor: Colors.pinkAccent,
              insideCircleColor: Colors.lightBlueAccent)),
      child: Slider(
        onChanged: (v) { },
        value: 2,
        min: 0,
        max: 10,
      ),
    );
  }
}
