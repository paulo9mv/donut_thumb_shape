```
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
              insideCircleRadius: 6,
              outsideCircleRadius: 8,
              outsideCircleColor: Colors.white,
              insideCircleColor: Color.fromRGBO(102, 0, 78, 1))),
      child: Slider(
        onChanged: (v) { },
        value: 2,
        min: 0,
        max: 10,
      ),
    );
  }
}
```

Output

![](https://github.com/paulo9mv/donut_thumb_shape/blob/master/assets/branco_roxo.png?raw=true)
