import 'package:flutter/material.dart';
import 'package:teslaapp/util/constants.dart';
import 'package:teslaapp/util/size_util.dart';

class CarStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeUtil(context).calcularWidth(45)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Status",
              style: Constants.menuTextStyle1
                  .copyWith(fontSize: SizeUtil(context).calcularHeight(24))),
          SizedBox(
            height: SizeUtil(context).calcularHeight(24),
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset('assets/icons/battery_icon.png'),
                      SizedBox(
                        width: SizeUtil(context).calcularWidth(7),
                      ),
                      Text("Battery", style: Constants.menuTextStyle2),
                    ],
                  ),
                  SizedBox(
                    height: SizeUtil(context).calcularWidth(8),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtil(context).calcularWidth(4),
                        horizontal: SizeUtil(context).calcularWidth(14)),
                    child: Text("54%", style: Constants.menuTextStyle1),
                  ),
                ],
              ),
              SizedBox(
                width: SizeUtil(context).calcularWidth(40),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset('assets/icons/range_icon.png'),
                      SizedBox(
                        width: SizeUtil(context).calcularWidth(7),
                      ),
                      Text("Range", style: Constants.menuTextStyle2),
                    ],
                  ),
                  SizedBox(
                    height: SizeUtil(context).calcularWidth(8),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtil(context).calcularWidth(4),
                        horizontal: SizeUtil(context).calcularWidth(14)),
                    child: Text("297 km", style: Constants.menuTextStyle1),
                  ),
                ],
              ),
              SizedBox(
                width: SizeUtil(context).calcularWidth(40),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset('assets/icons/temp_icon.png'),
                      SizedBox(
                        width: SizeUtil(context).calcularWidth(7),
                      ),
                      Text("Temperature", style: Constants.menuTextStyle2),
                    ],
                  ),
                  SizedBox(
                    height: SizeUtil(context).calcularWidth(8),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtil(context).calcularWidth(4),
                        horizontal: SizeUtil(context).calcularWidth(14)),
                    child: Text("27° C", style: Constants.menuTextStyle1),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
