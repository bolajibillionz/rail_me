import 'package:flutter/material.dart';
import 'package:rail_me/app/data/services/rail_me_service.dart';
import 'package:rail_me/app/data/Model/rail_me_model.dart';
import 'package:rail_me/core/Utilities/constants.dart';
import 'package:rail_me/core/Utilities/size_config.dart';

class BookedTicketPage extends StatefulWidget {
  @override
  State<BookedTicketPage> createState() => _BookedTicketPageState();
}

class _BookedTicketPageState extends State<BookedTicketPage> {
  late Future<Result> _result;

  @override
  void initState() {
    _result = BookedTicketService.getBookedTicket();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(80)),
          Center(
            child: Text(
              'Booked Ticket',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: kmainColor,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Expanded(
              child: FutureBuilder(
                  future: _result,
                  builder: (context, AsyncSnapshot<Result> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error'),
                      );
                    } else {
                      return ListView.builder(
                          itemCount:
                              (snapshot.data! as Success).response.length,
                          // widget.myTickets.length,
                          itemBuilder: (context, index) {
                            var ticket =
                                (snapshot.data! as Success).response[index];
                            return Container(
                              margin: EdgeInsets.all(
                                  getProportionateScreenWidth(20)),
                              padding: EdgeInsets.all(
                                  getProportionateScreenWidth(20)),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kmainColor,
                                  width: getProportionateScreenWidth(1),
                                ),
                                color: ksecondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                          height:
                                              getProportionateScreenHeight(10)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Ticket Number:',
                                              style: TextStyle(
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          15),
                                                  color: kblackcolor)),
                                          SizedBox(
                                            width:
                                                getProportionateScreenWidth(5),
                                          ),
                                          Text('${ticket.id}',
                                              style: TextStyle(
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          14),
                                                  color: kblackcolor)
                                              //
                                              ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Destination:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('${ticket.destination}'),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Reservation:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('${ticket.reservation}'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Time:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('${ticket.time}'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Date:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('${ticket.date}'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.edit_calendar_outlined,
                                          color: kmainColor,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // BookedTicketService.deleteTicket(
                                          //     ticket.id);
                                        },
                                       
                                        child: Icon(
                                          Icons.delete_outline,
                                          color: kmainColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}
