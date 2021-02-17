import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:teslaapp/components/information_card.dart';
import 'package:teslaapp/util/constants.dart';
import 'package:teslaapp/util/size_util.dart';

class CarInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              top: SizeUtil(context).calcularHeight(56),
              bottom: SizeUtil(context).calcularHeight(24),
              left: SizeUtil(context).calcularWidth(45)),
          child: Text(
            "Information",
            style: Constants.menuTextStyle1
                .copyWith(fontSize: SizeUtil(context).calcularHeight(24)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: SizeUtil(context).calcularWidth(45),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                InformationCard(),
                InformationCard(),
                InformationCard(),
                InformationCard(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
