import 'package:flutter/material.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/size_config.dart';


class NewTicketPage extends StatefulWidget {
  const NewTicketPage({Key? key}) : super(key: key);

  @override
  State<NewTicketPage> createState() => _NewTicketPageState();
}

class _NewTicketPageState extends State<NewTicketPage> {
  String? myInitialItem;
  List<String> cities = [
    'Ibadan',
    'Zaria',
    'Lagos',
    'Abuja',
    'Kano',
    'Kaduna',
    'Katsina',
    'Kaduna'
  ];

  @override
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
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Book New Ticket",
                      style: TextStyle(
                          fontFamily: kfontFamily,
                          color: kmainColor,
                          // fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(26)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select your sourse station here"),
                         
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select me"),
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select me"),
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select me"),
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select me"),
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        margin: EdgeInsets.all(getProportionateScreenWidth(5)),
                        width: getProportionateScreenWidth(300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Palette.textColor2,
                            width: 2,
                          ),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text("select me"),
                          onChanged: ((value) {
                            myInitialItem = value!;
                            setState(() {});
                          }),
                          value: myInitialItem,
                          items: cities.map((items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(child: 
                    Container(
                      margin: EdgeInsets.fromLTRB(getProportionateScreenWidth(15), 
                      getProportionateScreenHeight(10), 
                      getProportionateScreenWidth(15), 
                      getProportionateScreenHeight(10)),
                      padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(15), 
                      getProportionateScreenHeight(10), 
                      getProportionateScreenWidth(15), 
                      getProportionateScreenHeight(10)),
                      decoration: BoxDecoration(
                        color: kmainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Process",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(15),
                        // fontWeight: FontWeight.bold,
                      
                      ),)),
                      

                    )),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(150),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                                image: AssetImage("images/sk1.png"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(0.1),
                                  BlendMode.darken,
                                
                    
                        ),
                      ),),),
                    )
                    
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
