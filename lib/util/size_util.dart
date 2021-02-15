import 'package:flutter/material.dart';

class SizeUtil {
  BuildContext context;
  int _prototypeDeviceWidth = 494;
  int _prototypeDeviceHeight = 1074;

  calcularHeight(double objW) =>
      MediaQuery.of(context).size.height * (objW / _prototypeDeviceHeight);
  calcularWidth(double objW) =>
      MediaQuery.of(context).size.width * (objW / _prototypeDeviceWidth);

  SizeUtil(this.context) : assert(context != null);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}
