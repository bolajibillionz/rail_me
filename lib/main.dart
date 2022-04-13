import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'app/presenttion/screen/splash_screen.dart';
import 'core/Utilities/constants.dart';



void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: ksecondBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}


// child: ListView.builder(
//               itemCount: widget.myTickets.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(20),
//                     vertical: getProportionateScreenHeight(10),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: ksecondBackgroundColor,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: getProportionateScreenWidth(20),
//                         vertical: getProportionateScreenHeight(10),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Ticket No: ${widget.myTickets[index].ticketNo}',
//                             style: TextStyle(
//                               fontSize: getProportionateScreenWidth(20),
//                               fontWeight: FontWeight.bold,
//                               color: ktextColor,
//                             ),
//                           ),
//                           SizedBox(height: getProportionateScreenHeight(10)),
//                           Text(
//                             'Full Name: ${widget.myTickets[index].fullName}',
//                             style: TextStyle(
//                               fontSize: getProportionateScreenWidth(20),
//                               fontWeight: FontWeight.bold,
//                               color: ktextColor,
//                             ),
//                           ),
//                           SizedBox(height: getProportionateScreenHeight(10)),
//                           Text(
//                             'Address: ${widget.myTickets[index].address}',
//                             style: TextStyle(
//                               fontSize: getProportionateScreenWidth(20),
//                               fontWeight: FontWeight.bold,
//                               color: ktextColor,
//                             ),
//                           ),
//                           SizedBox(height: getProportionateScreenHeight(10)),
//                           Text(
//                             'Destination: ${widget.myTickets[index].destination
          
