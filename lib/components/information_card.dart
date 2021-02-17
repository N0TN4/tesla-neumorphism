import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:teslaapp/util/size_util.dart';

class InformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 32),
      child: NeuCard(
          curveType: CurveType.flat,
          bevel: 2,
          decoration: NeumorphicDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff1F2328),
          ),
          width: SizeUtil(context).calcularHeight(160),
          height: SizeUtil(context).calcularWidth(150),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 16,
                left: 16,
                child: Image.asset(
                  'assets/icons/blue_dot_icon.png',
                ),
              ),
            ],
          )),
    );
  }
}
