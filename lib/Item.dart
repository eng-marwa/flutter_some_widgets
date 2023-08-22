import 'package:flutter/material.dart';

class Course {
  String name = '';
  double price;
  int duration;
  Color color;
  bool isEdit;

  Course(
      {required this.name,
      required this.duration,
      this.price = 0.0,
      this.color = Colors.black,
      this.isEdit = false});
}
