import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceActivity extends StatefulWidget {
  final int attendanceStatus;
  final String eventName;
  final String eventLocation;
  final String eventDate;

  const AttendanceActivity(
      {Key? key,
      required this.eventName,
      required this.eventLocation,
      required this.eventDate,
      required this.attendanceStatus})
      : super(key: key);
  @override
  _AttendanceActivityState createState() => _AttendanceActivityState();
}

class _AttendanceActivityState extends State<AttendanceActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 10,
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.094,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  PhysicalModel(
                    color: Color(0xffd3d3d3),
                    elevation: 5,
                    shape: BoxShape.circle,
                    child: CircleAvatar(
                      backgroundColor: widget.attendanceStatus == 1
                          ? Color(0xff8acac0) //Colors.green
                          : widget.attendanceStatus == 2
                              ? Colors.red[400]
                              : widget.attendanceStatus == 3
                                  ? Color(0xffF5CE83)
                                  : Colors.grey,
                      child: Text(
                        widget.attendanceStatus == 1
                            ? 'P'
                            : widget.attendanceStatus == 2
                                ? 'A'
                                : widget.attendanceStatus == 3
                                    ? 'R'
                                    : '',
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.eventName,
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 18,
                          color: Colors.blueGrey, // fontColor,
                          fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        widget.eventLocation,
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 15,
                          color: Colors.blueGrey,
                          //fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                     
                      
                    ],
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.955,
                    width: 20,
                  ),
                  // Spacer(),
                      Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0,
                        ),
                        child: Text(
                          widget.eventDate,
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontSize: 15,
                            color: Colors.grey[400],
                            //fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
