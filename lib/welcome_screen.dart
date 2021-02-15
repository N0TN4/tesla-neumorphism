import 'dart:async';

import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:teslaapp/util/size_util.dart';

import 'components/primary_button.dart';
import 'components/top_bar.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color gradientStart = Color(0xFF353A40);
  Color gradientEnd = Color(0xFF16171B);

  @override
  Widget build(BuildContext context) {
    print("LARGURA: ${MediaQuery.of(context).size}");

    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [gradientStart, gradientEnd],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: <Widget>[
            TopBar(),
            Positioned(
              top: SizeUtil(context).calcularHeight(164),
              right: 0,
              left: 0,
              child: Column(
                children: <Widget>[
                  Text(
                    "Tesla",
                    style: TextStyle(
                      fontSize: SizeUtil(context).calcularHeight(24),
                      color: Color(0xff7F8489),
                    ),
                  ),
                  Text(
                    "Cybertruck",
                    style: TextStyle(
                      fontSize: SizeUtil(context).calcularHeight(50),
                      fontWeight: FontWeight.w900,
                      color: Color(0xffFDFDFD),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: SizeUtil(context).calcularHeight(327),
              right: 0,
              left: 0,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "297",
                          style: TextStyle(
                            fontSize: 188,
                            fontFamily: 'Gilroy',

                            // fontWeight: FontWeight.w900,
                            color: Color(0xffFDFDFD),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Text(
                            "km",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Gilroy',

                              // fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: SizeUtil(context).calcularWidth(46),
                                top: SizeUtil(context).calcularHeight(260)),
                            child: Image.asset(
                              'assets/car-shadow.png',
                              width: SizeUtil(context).calcularWidth(364),
                              height: SizeUtil(context).calcularHeight(300),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: SizeUtil(context).calcularWidth(50),
                                top: SizeUtil(context).calcularHeight(118)),
                            child: Image.asset(
                              "assets/car-truck.png",
                              width: SizeUtil(context).calcularWidth(364),
                              height: SizeUtil(context).calcularHeight(300),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: SizeUtil(context).calcularHeight(806),
              left: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  Text(
                    "A/C is turned on",
                    style: TextStyle(
                      fontSize: SizeUtil(context).calcularHeight(24),
                      color: Color(0xff7F8489),
                    ),
                  ),
                  SizedBox(
                    height: SizeUtil(context).calcularHeight(50),
                  ),
                  PrimaryButton(
                    url: "assets/icons/lock_icon.png",
                    width: 120,
                    height: 120,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeUtil(context).calcularHeight(16)),
                    child: Text(
                      "Tap to open the car",
                      style: TextStyle(
                        fontSize: SizeUtil(context).calcularWidth(18),
                        color: Color(0xffE6E6E6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
