import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:responsive_pixel/responsive_pixel.dart';
import './welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsivePixelHandler.init(
      baseWidth: 494,
    );
    ResponsivePixelHandler.init();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.blueAccent,
    ));
    return NeuApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: NeuThemeData(
        primarySwatch: Colors.blue,

        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
