import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:iAttend/ui/widgets/events/event_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:expansion_card/expansion_card.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

enum EventType { rehearsal, wedding, funeral, birthday, concert }

class _EventsPageState extends State<EventsPage> {
  EventType _selection;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Events",
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
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Events",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline6,
                    fontSize: 18,
                    color: fontColor,
                    //fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                PopupMenuButton<EventType>(
                  child: Icon(
                    Icons.filter_list_sharp,
                  ),
                  onSelected: (EventType result) {
                    setState(() {
                      _selection = result;
                    });
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<EventType>>[
                    const PopupMenuItem<EventType>(
                      value: EventType.concert,
                      child: Text('Concert'),
                    ),
                    const PopupMenuItem<EventType>(
                      value: EventType.wedding,
                      child: Text('Wedding'),
                    ),
                    const PopupMenuItem<EventType>(
                      value: EventType.funeral,
                      child: Text('Funeral'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Other contents go here
          Expanded(
            child: ListView(
              children: [
                EventsCard(
                  date: "10th January 2021",
                  location: "Last Stop",
                  name: "All Day Rehearsal",
                  time: "10:00 - 15:00",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                EventsCard(
                  date: "21st December 2021",
                  location: "Supreme Court",
                  name: "Court Carols Service",
                  time: "19:00 - 21:00",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
