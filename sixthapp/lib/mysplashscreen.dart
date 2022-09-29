import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'homepage.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text('Sunflower app'),
      image: new Image.asset('assets/image.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.yellow,
      loadingText: Text('Loading...'),
    );
    ;
  }
}
