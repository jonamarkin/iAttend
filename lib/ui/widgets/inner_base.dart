import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/views/attendance/attendance.dart';
import 'package:iAttend/ui/views/dashboard/dashboard.dart';
import 'package:iAttend/ui/views/events/events.dart';
import 'package:iAttend/ui/views/profile/profile.dart';
import 'package:line_icons/line_icons.dart';

class InnerPages extends StatefulWidget {
  final Widget body;
  final String title;

  const InnerPages({Key? key, required this.body, required this.title})
      : super(key: key);
  @override
  _InnerPagesState createState() => _InnerPagesState();
}

class _InnerPagesState extends State<InnerPages> {
  int _selectedIndex = 0;

  Widget changeScreen(int index) {
    switch (index) {
      case 0:
        return Dashboard();
        break;
      case 1:
        return AttendancePage();
        break;

      case 2:
        return EventsPage();

        break;
      case 3:
        return ProfilePage();
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: 22,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
            //     //fontStyle: FontStyle.italic,
          ),
        ),
        elevation: 0,
        //leading: MyArc(diameter: 300),

        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Icon(
              LineIcons.arrowCircleLeft,
            ),

            // Text(
            //   "Back",
            //   style: GoogleFonts.lato(
            //     textStyle: Theme.of(context).textTheme.headline2,
            //     fontSize: 15,
            //     color: Colors.blueGrey,
            //     fontWeight: FontWeight.bold,
            //     //fontStyle: FontStyle.italic,
            //   ),
            // ),
          ),
        ),
        //toolbarHeight: 15,
      ),
      body: widget.body,
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(color: backColor, boxShadow: [
      //     BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
      //   ]),
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      //       child: GNav(
      //         rippleColor: Colors.grey[300],
      //         hoverColor: Colors.grey[100],
      //         gap: 8,
      //         activeColor: fontColor,
      //         iconSize: 24,
      //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      //         duration: Duration(milliseconds: 400),
      //         tabBackgroundColor: Color(0xff8acac0),
      //         tabs: [
      //           GButton(
      //             icon: LineIcons.home,
      //             text: 'Home',
      //           ),
      //           GButton(
      //             icon: LineIcons.checkSquareAlt,
      //             text: 'Attendance',
      //           ),
      //           GButton(
      //             icon: LineIcons.calendarAlt,
      //             text: 'Events',
      //           ),
      //           GButton(
      //             icon: LineIcons.user,
      //             text: 'Profile',
      //           ),
      //         ],
      //         selectedIndex: _selectedIndex,
      //         onTabChange: (index) {
      //           // print(index);
      //           // print(_selectedIndex);

      //           setState(
      //             () {
      //               _selectedIndex = index;

      //               print(index);
      //               print(_selectedIndex);

      //               //changeScreen(_selectedIndex);
      //             },
      //           );
      //         },
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
