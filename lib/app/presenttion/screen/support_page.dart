import 'package:flutter/material.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/reuseables.dart';
import '../../../core/Utilities/size_config.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 213, 236, 225),
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Center(
                child: Text(
                  'Support',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: kfontFamily,
                      fontSize: getProportionateScreenWidth(34),
                      color: kmainColor,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Icon(Icons.train,
                  color: kmainColor, size: SizeConfig.screenWidth * 0.3),
              railText("Rail-Me", 20, kmainColor),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                      margin: EdgeInsets.all(getProportionateScreenWidth(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: kmainColor,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15),
                          ),
                          railText('My Profile', 20, kmainColor)
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                      margin: EdgeInsets.all(getProportionateScreenWidth(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: kmainColor,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15),
                          ),
                          railText('change Password', 20, kmainColor)
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SupportAlert()));
                  },
                  child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                      margin: EdgeInsets.all(getProportionateScreenWidth(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.contact_phone,
                            color: kmainColor,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(15),
                          ),
                          railText('Contact Us', 20, kmainColor)
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(200),
              )
            ],
          ),
        )));
  }
}

class SupportAlert extends StatelessWidget {
  const SupportAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Color.fromARGB(255, 195, 196, 196),
      title: Center(
          child: Text(
        "Contact Us Via",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(25),
          fontFamily: kfontFamily,
          fontWeight: FontWeight.bold,
          color: kmainColor,
        ),
      )),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Email:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(20),
                fontFamily: kfontFamily,
                color: kmainColor,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              "billionz.global@gmail.com",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontFamily: kfontFamily,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              "Phone Number:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(20),
                fontFamily: kfontFamily,
                color: kmainColor,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              "07038709484",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontFamily: kfontFamily,
              ),
            ),
          ],
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Close",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontFamily: kfontFamily,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
