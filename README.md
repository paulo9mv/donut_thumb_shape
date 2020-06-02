# donut_thumb_shape

A widget for creating a donut thump shape easily on Sliders.

## Usage

### Import the package

To use this package, [follow the instructions here](https://pub.dev/packages/donut_thumb_shape#-installing-tab-).
Then use it with SliderTheme, for example, the following code provides the following output:

```
SliderTheme(
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
        ),
```

![](https://github.com/paulo9mv/donut_thumb_shape/blob/master/rosa_azul.png?raw=true)

More examples [here](https://pub.dev/packages/donut_thumb_shape#-example-tab-)

### Use the package

    import 'package:donut_thumb_shape/donut_thumb_shape.dart';


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
