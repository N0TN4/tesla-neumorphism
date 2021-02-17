import 'package:flutter/material.dart';

import 'package:teslaapp/util/constants.dart';

class BackgroundApp extends StatelessWidget {
  final Widget child;
  const BackgroundApp({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Constants.bgGradientStart, Constants.bgGradientEnd],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
          stops: [0.0, 1.0],
        ),
      ),
      child: child,
    );
  }
}
