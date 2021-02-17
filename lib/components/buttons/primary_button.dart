import 'dart:async';

import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

import 'package:teslaapp/util/size_util.dart';

class PrimaryButton extends StatefulWidget {
  final String url;
  final double width;
  final double height;

  const PrimaryButton({
    Key key,
    this.url,
    this.width,
    this.height,
  }) : super(key: key);
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool buttonAc = false;
  int depthButton = 60;
  StreamSubscription periodicSub;
  double iconScale = 1.3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          animationDepth();
          buttonAcOnTap();
        },
        child: Container(
          decoration: BoxDecoration(),
          child: ClayContainer(
            surfaceColor: Color(0xff007cd9),

            // emboss: buttonAc,
            width: SizeUtil(context).calcularWidth(widget.width ?? 100),
            height: SizeUtil(context).calcularHeight(widget.height ?? 100),
            color: Color(0xff0081C9),
            // parentColor: Color(0xff0081C9),
            borderRadius: SizeUtil(context).calcularWidth(widget.width),
            spread: 1,
            depth: depthButton,
            emboss: buttonAc,
            curveType: CurveType.concave,
            child: Container(
              width: 24,
              height: 24,
              child: Image.asset(
                '${widget.url}',
                scale: iconScale,
              ),
            ),
          ),
        ),
      ),
    );
  }

  animationDepth() {
    periodicSub = new Stream.periodic(const Duration(milliseconds: 5), (v) => v)
        .take(60)
        .listen((count) {
      setState(() {
        if (count < 30) {
          depthButton -= 2;
          iconScale += 0.01;
        } else {
          depthButton += 2;
          iconScale -= 0.01;
        }

        print('tick $count');
      });
    });
  }

  buttonAcOnTap() {
    print("Tapped");
    setState(() {
      buttonAc = !buttonAc;
      Timer(new Duration(milliseconds: 150), () {
        setState(() {
          buttonAc = !buttonAc;
        });
      });
    });
  }
}
