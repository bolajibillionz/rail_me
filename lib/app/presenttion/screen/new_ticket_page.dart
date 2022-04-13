import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rail_me/app/data/Model/rail_me_model.dart';
import 'package:rail_me/app/data/services/rail_me_service.dart';
import 'package:rail_me/app/presenttion/screen/booked_ticket.dart';
import '../../../core/Utilities/constants.dart';
import '../../../core/Utilities/size_config.dart';

class NewTicketPage extends StatefulWidget {
  const NewTicketPage({Key? key}) : super(key: key);

  @override
  State<NewTicketPage> createState() => _NewTicketPageState();
}

class _NewTicketPageState extends State<NewTicketPage> {
  final GlobalKey<FormState> _ticketKey = GlobalKey<FormState>();
  DateTime dateTime = DateTime(2022);

  final _fullName = TextEditingController();
  final _address = TextEditingController();
  final _destination = TextEditingController();
  final _reservation = TextEditingController();
  final _time = TextEditingController();
  final _date = TextEditingController();
  bool isDate = false;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _ticketKey,
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(80)),
                Center(
                  child: Text(
                    'New Ticket',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(30),
                      fontWeight: FontWeight.bold,
                      color: kmainColor,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                buildTicketField('Full name', true, false, false, false, false,
                    false, _fullName),
                buildTicketField('Address', false, true, false, false, false,
                    false, _address),
                buildTicketField('Destination', false, false, true, false,
                    false, false, _destination),
                buildTicketField('Reservation', false, false, false, true,
                    false, false, _reservation),
                buildTicketField(
                    'Time', false, false, false, false, true, false, _time),
                buildTicketField(
                    '${dateTime.year}-${dateTime.month}-${dateTime.day}',
                    false,
                    false,
                    false,
                    false,
                    false,
                    true,
                    _date),
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: dateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2050));
                      if (newDate != null) {
                        setState(() {
                          dateTime = newDate;
                        });
                      }
                    },
                    child: Text('Choose Date')),
                SizedBox(height: getProportionateScreenHeight(30)),
                GestureDetector(
                  onTap: () {
                    _getNewTicket();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(30),
                        getProportionateScreenHeight(10),
                        getProportionateScreenWidth(30),
                        getProportionateScreenHeight(10)),
                    padding: EdgeInsets.fromLTRB(
                        getProportionateScreenWidth(15),
                        getProportionateScreenHeight(10),
                        getProportionateScreenWidth(15),
                        getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                      color: kmainColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: isloading
                            ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.yellow),
                              )
                            : Text(
                                "Book Ticket",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getProportionateScreenWidth(20),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTicketField(
      String hintText,
      bool isFullName,
      bool isAddress,
      bool isDestination,
      bool isReservation,
      bool isTime,
      bool isDate,
      var entercontroller) {
    return Container(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(30),
          right: getProportionateScreenWidth(30),
          top: getProportionateScreenHeight(5),
          bottom: getProportionateScreenHeight(5)),
      child: TextFormField(
        controller: entercontroller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
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
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }

  void _getNewTicket() async {
    if (_ticketKey.currentState?.validate() ?? false) {
      _ticketKey.currentState?.save();
      Ticket newTicket = Ticket(
        fullName: _fullName.text,
        address: _address.text,
        destination: _destination.text,
        reservation: _reservation.text,
        time: _time.text,
        date: dateTime,
      );
      setState(() {
        isloading = true;
      });
      var response = await BookTicketService.bookTicket(newTicket);

      setState(() {
        isloading = false;
      });
      if (response is Success) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => BookedTicketPage()));
      } else {
        print((response as Failure).error);
      }
    } else {
      print('else');
    }
    ;
  }
  
}
