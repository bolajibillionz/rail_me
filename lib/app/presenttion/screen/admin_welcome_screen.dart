import 'package:flutter/material.dart';
import 'package:rail_me/app/presenttion/screen/admin_profile.dart';
import 'package:rail_me/app/presenttion/screen/booking_page.dart';
import 'package:rail_me/app/presenttion/screen/support_page.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/reuseables.dart';
import '../../../core/Utilities/size_config.dart';


class AdminWelcomePage extends StatelessWidget {
  const AdminWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    bool isMale = true;
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(25),
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20),
              bottom: getProportionateScreenHeight(20),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CircleAvatar(
                      radius: getProportionateScreenHeight(30),
                      backgroundImage: isMale
                          ? AssetImage('images/male.png')
                          : AssetImage('images/female.png'),
                    ),
                  ]),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Text(
                    "Welcome, Bolaji",
                    style: TextStyle(
                        fontFamily: kfontFamily,
                        color: kmainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(24)),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Text(
                    "Please select what you want",
                    style: TextStyle(
                        fontFamily: kfontFamily,
                        color: Palette.textColor1,
                        // fontStyle: FontStyle.italic,
                        fontSize: getProportionateScreenWidth(16)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingPage()));
                      },
                      child: BackgroundImage(
                        image: AssetImage("images/h1.jpg"),
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
                          child: Text(
                            "View All Users",
                            style: TextStyle(
                              fontFamily: kfontFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(20),
                              // fontSize: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenHeight(500),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: BackgroundImage(
                        image: AssetImage("images/t3.jpg"),
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
                          child: Text(
                            "Upload Reservation",
                            style: TextStyle(
                              fontFamily: kfontFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(20),
                              // fontSize: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenHeight(500),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: BackgroundImage(
                        image: AssetImage("images/p8.jpg"),
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
                          child: Text(
                            "View Bookings",
                            style: TextStyle(
                              fontFamily: kfontFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(20),
                              // fontSize: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenHeight(500),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminProfilePage()));
                      },
                      child: BackgroundImage(
                        image: AssetImage("images/s1.jpg"),
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
                          child: Text(
                            "My profile",
                            style: TextStyle( 
                              fontFamily: kfontFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(20),
                              // fontSize: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                          height: getProportionateScreenHeight(50),
                          width: getProportionateScreenHeight(500),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(10)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15)),
                ]),
          ),
        ),
      ),
    );
  }
}
