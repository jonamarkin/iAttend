import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:iAttend/ui/widgets/dashboard/dashboard_card.dart';
import 'package:line_icons/line_icons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline2,
                      fontSize: 36,
                      color: fontColor,
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: fontColor,
                    child: Text('JM'),
                  ),
                ],
              ),
              Text(
                "Jonathan Ato Markin",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline3,
                  fontSize: 18,
                  color: fontColor,
                  //fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Color(0xff8acac0),
                    ),
                    Text(
                      "  Administrator",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline3,
                        fontSize: 15,
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
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DashboardCard(
                      cardName: "Teams",
                      cardColor: Color(0xffF5CE83),
                      cardIcon: LineIcons.peopleCarry,
                      onTap: () {},
                    ),
                    DashboardCard(
                      cardName: "Members",
                      cardColor: Color(0xff8acac0),
                      cardIcon: LineIcons.users,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardCard(
                    cardName: "Requests",
                    cardColor: Color(0xff8acac0),
                    cardIcon: LineIcons.book,
                    onTap: () {},
                  ),
                  DashboardCard(
                    cardName: "Notices",
                    cardColor: Color(0xffF5CE83),
                    cardIcon: LineIcons.bookReader,
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => EventsPage()))
                    },
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "New Event",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline3,
                      fontSize: 15,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  // color: Color(0xffd3d3d3),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(
                      9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    //maxRadius: 40,
                                    child: Icon(
                                      LineIcons.userClock,
                                      size: 45,
                                      //color: fontColor,
                                      color: Color(0xff8acac0),
                                    ),
                                  ),
                                ],
                              ),
                              FlatButton(
                                splashColor: Color(0xffF5CE83),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    color: Color(0xff8acac0),
                                  ),
                                ),
                                // color: ,
                                onPressed: () {},
                                child: Text(
                                  "Clock In",
                                  style: GoogleFonts.lato(
                                    textStyle:
                                        Theme.of(context).textTheme.headline3,
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Friday Night Rehearsal",
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline3,
                                  fontSize: 23,
                                  color: fontColor,
                                  fontWeight: FontWeight.bold,
                                  //fontStyle: FontStyle.italic,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    LineIcons.directions,
                                    size: 22,
                                    color: fontColor,
                                  ),
                                  Text(
                                    "Christian Home School",
                                    style: GoogleFonts.lato(
                                      textStyle:
                                          Theme.of(context).textTheme.headline3,
                                      fontSize: 18,
                                      color: Colors.blueGrey,
                                      //fontWeight: FontWeight.bold,
                                      //fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    LineIcons.clock,
                                    size: 22,
                                    color: fontColor,
                                  ),
                                  Text(
                                    "18:00 - 20:30",
                                    style: GoogleFonts.lato(
                                      textStyle:
                                          Theme.of(context).textTheme.headline3,
                                      fontSize: 18,
                                      color: Colors.blueGrey,
                                      //fontWeight: FontWeight.bold,
                                      //fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
