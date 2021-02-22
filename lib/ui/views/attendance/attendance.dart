import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/attendance/attendance_activity.dart';
import 'package:iAttend/ui/widgets/attendance/pie_chart.dart';
import 'package:iAttend/ui/widgets/attendance/pie_chart2.dart';
//import 'package:iAttend/ui/widgets/attendance/pie_chart3.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

enum AttendanceStatus { present, absent, permission }

class _AttendancePageState extends State<AttendancePage> {
  final Color barColor = Colors.white;
  final Color barBackgroundColor = const Color(0xff72d8bf);
  final double width = 22;

  AttendanceStatus _selection;

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
                "Attendance",
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
            "Attendance Chart",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 18,
              color: fontColor,
              //fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.italic,
            ),
          ),
          //PieChartSample1(),
          //PieChartSample3(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          PieChartSample2(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Attendance Activity",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),

                PopupMenuButton<AttendanceStatus>(
                  child: Icon(
                    Icons.filter_list_sharp,
                  ),
                  onSelected: (AttendanceStatus result) {
                    setState(() {
                      _selection = result;
                    });
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<AttendanceStatus>>[
                    const PopupMenuItem<AttendanceStatus>(
                      value: AttendanceStatus.present,
                      child: Text('Present'),
                    ),
                    const PopupMenuItem<AttendanceStatus>(
                      value: AttendanceStatus.absent,
                      child: Text('Absent'),
                    ),
                    const PopupMenuItem<AttendanceStatus>(
                      value: AttendanceStatus.permission,
                      child: Text('Permission'),
                    ),
                  ],
                )
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.filter_list_sharp,
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                AttendanceActivity(
                  attendanceStatus: 1,
                  eventDate: "Mar 23",
                  eventLocation: "Lawyer Junction",
                  eventName: "All Night Rehearsal",
                ),
                AttendanceActivity(
                  attendanceStatus: 2,
                  eventDate: "Jan 23",
                  eventLocation: "SMM Catholic Church",
                  eventName: "Wedding Ceremony",
                ),
                AttendanceActivity(
                  attendanceStatus: 3,
                  eventDate: "Mar 23",
                  eventLocation: "Kotobabi",
                  eventName: "Funeral Service",
                ),
                AttendanceActivity(
                  attendanceStatus: 1,
                  eventDate: "Mar 23",
                  eventLocation: "East Legon",
                  eventName: "Birthday Party",
                ),
                AttendanceActivity(
                  attendanceStatus: 1,
                  eventDate: "Mar 23",
                  eventLocation: "Lawyer Junction",
                  eventName: "Friday Night Rehearsal",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
