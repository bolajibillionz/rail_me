// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:rail_me/app/presentation/screen/user_signin_signup.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/reuseables.dart';
import '../../../core/Utilities/size_config.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(15)),
            Center(
              child: Icon(Icons.train,
                  color: kmainColor, size: SizeConfig.screenWidth * 0.3),
            ),
            railText("Rail-Me", 20, kmainColor),
            SizedBox(height: getProportionateScreenHeight(55)),
            Image(
              image: AssetImage("images/train3.png"),
              
            ),
            SizedBox(
              height: getProportionateScreenHeight(55),
            ),
            WelcomeText1("Sign-up/Sign-in to the App", 25),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            WelcomeText2(
                "Choose a username and password \nlogin to the mobile application and \nbegin your journey with Rail-Me train",
                15),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserSigninSignUp())),
                child: Text(
                  'Login/Sign-up',
                  style: TextStyle(color: kmainColor,
                  fontFamily: kfontFamily,
                  fontSize: getProportionateScreenWidth(16)),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ksecondaryColor,
                  side: BorderSide(
                    width: getProportionateScreenWidth(2),
                    color: kmainColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



