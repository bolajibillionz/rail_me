// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/size_config.dart';
import 'user_welcome_screen.dart';

class UserSigninSignUp extends StatefulWidget {
  const UserSigninSignUp({Key? key}) : super(key: key);

  @override
  State<UserSigninSignUp> createState() => _UserSigninSignUpState();
}

class _UserSigninSignUpState extends State<UserSigninSignUp> {
  final formKey = GlobalKey<FormState>();
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: getProportionateScreenHeight(300),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/district.jpg"), fit: BoxFit.fill),
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(60),
                    left: getProportionateScreenWidth(20)),
                color: kmainColor.withOpacity(0.9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Welcome to',
                          style: TextStyle(
                            fontFamily: kfontFamily,
                            letterSpacing: 1,
                            fontSize: getProportionateScreenWidth(25),
                            color: kmainTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: isSignupScreen ? ' Rail-Me' : ' Back',
                              style: TextStyle(
                                fontFamily: kfontFamily,
                                fontSize: getProportionateScreenWidth(30),
                                color: kmainTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      isSignupScreen
                          ? 'Sign-up to Continue'
                          : 'Login to Continue',
                      style: TextStyle(
                        fontFamily: kfontFamily,
                        letterSpacing: 1,
                        fontSize: getProportionateScreenWidth(15),
                        // fontSize: getProportionateScreenWidth(25),
                        color: kmainTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: isSignupScreen
                ? getProportionateScreenHeight(170)
                : getProportionateScreenHeight(200),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(getProportionateScreenHeight(20)),
              height: isSignupScreen
                  ? getProportionateScreenHeight(540)
                  : getProportionateScreenHeight(400),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: ksecondaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: kmainColor.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5)
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            isSignupScreen = false;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontFamily: kfontFamily,
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(
                                    top: getProportionateScreenHeight(3)),
                                height: getProportionateScreenHeight(2),
                                width: getProportionateScreenWidth(55),
                                color: Colors.orange,
                              )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            isSignupScreen = true;
                          });
                        }),
                        child: Column(
                          children: [
                            Text(
                              "SIGNUP",
                              style: TextStyle(
                                  fontFamily: kfontFamily,
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(
                                    top: getProportionateScreenHeight(3)),
                                height: getProportionateScreenHeight(2),
                                width: getProportionateScreenWidth(55),
                                color: Colors.orange,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  if (isSignupScreen) buildSignUpSection(),
                  if (!isSignupScreen) buildSigninSection()
                ],
              ),
            ),
          ),
          bottomHalfContainer(),
        ],
      ),
    );
  }

  Expanded buildSigninSection() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      child: SingleChildScrollView(
        child: Column(children: [
          buildTextFormField(
              Icons.mail_outline, 'info@railme.com', false, true),
          buildTextFormField(Icons.lock, 'Password', true, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isRememberMe,
                      activeColor: Palette.textColor2,
                      onChanged: (value) {
                        setState(() {
                          isRememberMe = !isRememberMe;
                        });
                      }),
                  Text(
                    "Remember Me",
                    style: TextStyle(
                      fontFamily: kfontFamily,
                      fontSize: getProportionateScreenWidth(14),
                      color: Palette.textColor1,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                  ))
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
        ]),
      ),
    ));
  }

  Expanded buildSignUpSection() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildTextFormField(Icons.person, 'First Name', false, false),
                buildTextFormField(Icons.person, 'Last Name', false, false),
                buildPhoneNumber(Icons.phone, 'phone Number', false, false),
                buildTextFormField(
                    Icons.email_outlined, 'info@railme.com', false, true),
                buildTextFormField(Icons.lock, 'Password', true, false),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(8)),
                              height: getProportionateScreenHeight(30),
                              width: getProportionateScreenWidth(30),
                              decoration: BoxDecoration(
                                color: isMale
                                    ? Palette.textColor2
                                    : Colors.transparent,
                                border: Border.all(
                                    width: getProportionateScreenWidth(1),
                                    color: isMale
                                        ? Colors.transparent
                                        : Palette.textColor1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.person_outline,
                                color:
                                    isMale ? Colors.white : Palette.iconColor,
                              ),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontFamily: kfontFamily,
                                fontSize: getProportionateScreenWidth(14),
                                color: Palette.textColor1,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(30),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: getProportionateScreenWidth(8)),
                              height: getProportionateScreenHeight(30),
                              width: getProportionateScreenWidth(30),
                              decoration: BoxDecoration(
                                color: isMale
                                    ? Colors.transparent
                                    : Palette.textColor2,
                                border: Border.all(
                                    width: getProportionateScreenWidth(1),
                                    color: isMale
                                        ? Palette.textColor1
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.person_outline,
                                color:
                                    isMale ? Palette.iconColor : Colors.white,
                              ),
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontFamily: kfontFamily,
                                fontSize: getProportionateScreenWidth(14),
                                color: Palette.textColor1,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(200),
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(20)),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "By pressing 'Submit' you agree to our",
                        style: TextStyle(
                            fontFamily: kfontFamily,
                            fontSize: getProportionateScreenWidth(14),
                            color: Palette.textColor2),
                        children: [
                          TextSpan(
                              text: " term & conditions",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(14),
                                  fontFamily: kfontFamily,
                                  color: Colors.orange))
                        ]),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(45),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimatedPositioned bottomHalfContainer() {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 700),
        curve: Curves.bounceInOut,
        top: isSignupScreen
            ? getProportionateScreenHeight(670)
            : getProportionateScreenHeight(560),
        right: getProportionateScreenWidth(0),
        left: getProportionateScreenWidth(0),
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(
                getProportionateScreenWidth(15),
                getProportionateScreenHeight(15),
                getProportionateScreenWidth(15),
                getProportionateScreenHeight(15)),
            height: getProportionateScreenHeight(80),
            width: getProportionateScreenWidth(80),
            decoration: BoxDecoration(
              color: ksecondaryColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: kmainColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1))
              ],
            ),
            child: GestureDetector(
              onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserWelcomePage(),
                    ),
                  )),
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 29, 175, 34),
                      Color.fromARGB(255, 95, 216, 99),
                      Color.fromARGB(255, 82, 170, 10),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: kmainColor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1))
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: ksecondaryColor,
                    size: getProportionateScreenWidth(30),
                  )),
            ),
          ),
        ));
  }

  Widget buildTextFormField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(8)),
      child: TextFormField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
            size: getProportionateScreenWidth(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          contentPadding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10),
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: kfontFamily,
              fontSize: getProportionateScreenWidth(14),
              color: Palette.textColor1),
        ),
        onChanged: (value) => setState(() => hintText = value),
      ),
    );
  }

  Widget buildPhoneNumber(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(8)),
      child: TextFormField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(icon,
              color: Palette.iconColor, size: getProportionateScreenWidth(20)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          contentPadding: EdgeInsets.fromLTRB(
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10),
              getProportionateScreenWidth(10),
              getProportionateScreenHeight(10)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: kfontFamily,
              fontSize: getProportionateScreenWidth(14),
              color: Palette.textColor1),
        ),
        validator: (value) {
          if (value!.length != 11) {
            return "Phone Number not correct ";
          }
        },
        onChanged: (value) => setState(() => hintText = value),
      ),
    );
  }
}
