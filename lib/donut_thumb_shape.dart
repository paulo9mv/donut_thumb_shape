library donutthumbshape;

import 'dart:ui';

import 'package:flutter/material.dart';

class DonutThumbShape extends SliderComponentShape {
  final double enabledThumbRadius, disabledThumbRadius;
  final Color outsideCircleColor, insideCircleColor;
  final double outsideCircleRadius, insideCircleRadius;

  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  const DonutThumbShape({
    @required this.outsideCircleColor,
    @required this.insideCircleColor,
    @required this.outsideCircleRadius,
    @required this.insideCircleRadius,
    this.enabledThumbRadius = 1.0,
    this.disabledThumbRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled == true ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {Animation<double> activationAnimation,
        Animation<double> enableAnimation,
        bool isDiscrete,
        TextPainter labelPainter,
        RenderBox parentBox,
        SliderThemeData sliderTheme,
        TextDirection textDirection,
        double value}) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);
    assert(outsideCircleRadius >= insideCircleRadius);

    final Canvas canvas = context.canvas;

    final paintOutsideCircle = Paint();
    final paintInsideCircle = Paint();

    paintOutsideCircle.color = outsideCircleColor;
    paintInsideCircle.color = insideCircleColor;

    canvas.drawCircle(center, outsideCircleRadius, paintOutsideCircle);
    canvas.drawCircle(center, insideCircleRadius, paintInsideCircle);
  }
}
