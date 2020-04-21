import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewSlider extends Slider {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;

  NewSlider({
    @required this.value,
    @required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
  }) : super(value: value, onChanged: onChanged, min: min, max: max);
}
