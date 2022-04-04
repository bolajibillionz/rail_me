import 'package:flutter/material.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/reuseables.dart';
import '../../../core/Utilities/size_config.dart';

class AdminProfilePage extends StatefulWidget {
  const AdminProfilePage({Key? key}) : super(key: key);

  @override
  State<AdminProfilePage> createState() => _AdminProfilePageState();
}

class _AdminProfilePageState extends State<AdminProfilePage> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(20),
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                bottom: getProportionateScreenHeight(20),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: getProportionateScreenHeight(60),
                      backgroundImage: isMale
                          ? AssetImage('images/male.png')
                          : AssetImage('images/female.png'),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(8),
                    ),
                    Text(
                      "Adeladan Bolaji",
                      style: TextStyle(
                          fontFamily: kfontFamily,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(14)),
                    ),
                    // SizedBox(height: getProportionateScreenHeight(5),),
                    Text(
                      "Bolaji.adeladan@gmail.com",
                      style: TextStyle(
                          fontFamily: kfontFamily,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: getProportionateScreenWidth(12)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),

                    _adminProfileContainer(
                      Icons.logout,
                      "Logout",
                      'p6',
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Expanded _adminProfileContainer(
    var iconname,
    String profiletext,
    String imagename,
  ) =>
      Expanded(
        child: Container(
          margin: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(15),
              getProportionateScreenHeight(5),
              getProportionateScreenWidth(15),
              getProportionateScreenHeight(5)),
          padding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10),
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(10)),
                  child: Icon(iconname,
                      color: Colors.white,
                      size: getProportionateScreenWidth(25)),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Text(
                  profiletext,
                  style: TextStyle(
                      fontFamily: kfontFamily,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.06),
                ),
              ]),
              // SizedBox(
              //   width: getProportionateScreenWidth(20),
              // ),
              Icon(Icons.arrow_forward,
                  color: Colors.white, size: getProportionateScreenWidth(25)),
            ],
          ),
          height: getProportionateScreenHeight(50),
          width: getProportionateScreenHeight(500),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(10)),
          ),
        ),
      );
}
