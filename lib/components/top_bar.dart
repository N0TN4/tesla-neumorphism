import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:teslaapp/util/constants.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        top: MediaQuery.of(context).size.height * 0.04,
        right: MediaQuery.of(context).size.width * 0.08,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.115384,
            height: MediaQuery.of(context).size.height * 0.0530,
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
              child: Icon(
                Icons.settings,
                color: Color(0xff7F8489),
                size: MediaQuery.of(context).size.width * 0.03,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
