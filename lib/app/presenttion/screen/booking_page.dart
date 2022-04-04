import 'package:flutter/material.dart';
import 'package:rail_me/app/presenttion/screen/new_ticket_page.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/size_config.dart';


class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Center(
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
                    SizedBox(height: getProportionateScreenHeight(40)),
                    Text(
                      "Book Ticket",
                      style: TextStyle(
                          fontFamily: kfontFamily,
                          color: kmainColor,
                          // fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(26)),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
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
                        height: getProportionateScreenHeight(50),
                        width: getProportionateScreenHeight(500),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/t4.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.green.withOpacity(0.2),
                              BlendMode.darken,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewTicketPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(
                                  getProportionateScreenWidth(15)),
                              padding: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.train,
                                      color: kmainColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  Text(
                                    "Book New",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "Ticket",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(
                                  getProportionateScreenWidth(15)),
                              padding: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.train,
                                      color: kmainColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  Text(
                                    "Booked",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "Ticket",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(
                                  getProportionateScreenWidth(15)),
                              padding: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.history,
                                      color: kmainColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  Text(
                                    "Transaction",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(
                                  getProportionateScreenWidth(15)),
                              padding: EdgeInsets.fromLTRB(
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                                getProportionateScreenWidth(5),
                                getProportionateScreenHeight(15),
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.card_giftcard,
                                      color: kmainColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  Text(
                                    "Promotional",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(5),
                                  ),
                                  Text(
                                    "Offers",
                                    style: TextStyle(
                                      fontFamily: kfontFamily,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(10)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                    ),
                    
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
