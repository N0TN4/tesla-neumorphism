import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
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
        top: 40,
        right: 40,
        child: ClayContainer(
          surfaceColor: Color(0xFF2C3036),
          depth: 10,
          spread: 5,
          parentColor: Color(0xFF31343C),
          color: Color(0xFF31343C),
          height: 60,
          width: 60,
          borderRadius: 50,
          child: Icon(
            Icons.settings,
            size: 18,
            color: Constants.colorIcon,
          ),
        ),
      ),
    );
  }
}
