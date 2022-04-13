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
                                  getProportionateScreenWidth(10)),
                              padding: EdgeInsets.all(
                                  getProportionateScreenWidth(20)),
                              decoration: BoxDecoration(
                                color: kmainColor,
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
                                        children: [
                                          Text('Ticket Number:'),
                                          SizedBox(
                                            width:
                                                getProportionateScreenWidth(10),
                                          ),
                                          Text('1234'
                                              // '${widget.myTickets[index].fullName}'
                                              ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    children: [
                                      Text('Full name:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('bolaji'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    children: [
                                      Text('Destination:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('Lagos'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    children: [
                                      Text('Reservation:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('firstclass'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    children: [
                                      Text('Time:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text('time'
                                          // '${widget.myTickets[index].fullName}'
                                          ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: getProportionateScreenHeight(10)),
                                  Row(
                                    children: [
                                      Text('Date:'),
                                      SizedBox(
                                        width: getProportionateScreenWidth(10),
                                      ),
                                      Text("date"
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
                                      Icon(Icons.edit_calendar_outlined),
                                      Icon(Icons.delete_outline),
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
