import 'package:flutter/material.dart';

import 'components/top_bar.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color gradientStart = Color(0xFF353A40); //Change start gradient color here
  Color gradientEnd = Color(0xFF16171B);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [gradientStart, gradientEnd],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Stack(
            children: <Widget>[
              TopBar(),
              Positioned(
                top: MediaQuery.of(context).size.width / 4,
                right: 0,
                left: 0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Tesla",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff7F8489),
                      ),
                    ),
                    Text(
                      "Cybertruck",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffFDFDFD),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.width / 2,
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
                    Container(
                      padding: EdgeInsets.only(left: 50, top: 118),
                      child: Image.asset(
                        "assets/car-truck.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
