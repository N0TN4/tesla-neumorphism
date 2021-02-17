import 'package:flutter/material.dart';
import 'package:teslaapp/components/background_app.dart';
import 'package:teslaapp/components/main_top_bar.dart';
import 'package:teslaapp/pages/main_screen/car_information.dart';
import 'package:teslaapp/pages/main_screen/car_status.dart';
import 'package:teslaapp/util/constants.dart';
import 'package:teslaapp/util/size_util.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundApp(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MainTopBar(),
            Container(
              padding: EdgeInsets.only(
                  top: SizeUtil(context).calcularHeight(64),
                  bottom: SizeUtil(context).calcularHeight(61)),
              child: Image.asset('assets/car_front.png'),
            ),
            CarStatus(),
            SizedBox(),
            CarInformation(),
          ],
        ),
      ),
    );
  }
}
