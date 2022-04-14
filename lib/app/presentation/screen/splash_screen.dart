import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rail_me/app/presentation/screen/welcome_screen.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/reuseables.dart';
import '../../../core/Utilities/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BackgroundImage(
        image: AssetImage("images/station2.jpg"),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Expanded(
                  child: Icon(
                    Icons.train,
                    size: SizeConfig.screenWidth * 0.4,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: railText("Rail-Me", 50, kmainTextColor),
                  ),
                ),
                Spacer()
              ],
            )));
  }
}
