import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:teslaapp/util/size_util.dart';

class MainTopBar extends StatefulWidget {
  @override
  _MainTopBarState createState() => _MainTopBarState();
}

class _MainTopBarState extends State<MainTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: SizeUtil(context).calcularHeight(43),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: NeuButton(
                decoration: NeumorphicDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.all(Radius.circular(80)),
                    color: Color(0xFF31343C),
                    border: Border.all(
                      color: Color(0xFF2C3036),
                    )),
                onPressed: () {
                  print('Pressed !');
                },
                child: Image.asset(
                  'assets/icons/menu_icon.png',
                  width: 16,
                  height: 16,
                )),
          ),
          Expanded(
            flex: 2,
            child: Center(
                child: Column(
              children: <Widget>[
                Text(
                  "Tesla",
                  style: TextStyle(
                    fontSize: SizeUtil(context).calcularHeight(18),
                    color: Color(0xff7F8489),
                  ),
                ),
                Text(
                  "Cybertruck",
                  style: TextStyle(
                    fontSize: SizeUtil(context).calcularHeight(19),
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFDFDFD),
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: NeuButton(
                decoration: NeumorphicDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.all(Radius.circular(80)),
                    color: Color(0xFF31343C),
                    border: Border.all(
                      color: Color(0xFF2C3036),
                    )),
                onPressed: () {
                  print('Pressed !');
                },
                child: Image.asset(
                  'assets/icons/person_icon.png',
                  width: 16,
                  height: 16,
                )),
          ),
        ],
      ),
    );
  }
}
