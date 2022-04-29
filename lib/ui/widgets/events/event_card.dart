import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:line_icons/line_icons.dart';

class EventsCard extends StatefulWidget {
  final String time;
  final String location;
  final String name;
  final String date;

  const EventsCard(
      {Key? key,
      required this.time,
      required this.location,
      required this.name,
      required this.date})
      : super(key: key);
  @override
  _EventsCardState createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.43,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/events/1.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(
                    //   LineIcons.clock,
                    //   size: 22,
                    //   color: fontColor,
                    // ),
                    Text(
                      widget.name,
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline3,
                        fontSize: 22,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 20,
                    color: Colors.blueGrey,
                    //fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LineIcons.clock,
                            size: 22,
                            color: fontColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            widget.time,
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline3,
                              fontSize: 18,
                              color: Colors.blueGrey,
                              //fontWeight: FontWeight.bold,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LineIcons.mapMarked,
                            size: 22,
                            color: fontColor,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            widget.location,
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline3,
                              fontSize: 18,
                              color: Colors.blueGrey,
                              //fontWeight: FontWeight.bold,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xff8acac0),
            height: MediaQuery.of(context).size.height * 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CLOCK IN",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Icon(
                  LineIcons.arrowCircleRight,
                  size: 22,
                  color: fontColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
