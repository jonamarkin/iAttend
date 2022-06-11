import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
//import 'package:rolling_nav_bar/rolling_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iAttend/models/Usermodel.dart';
import 'package:iAttend/ui/views/attendance/attendance.dart';
import 'package:iAttend/ui/views/dashboard/dashboard.dart';
import 'package:iAttend/ui/views/events/events.dart';
import 'package:iAttend/ui/views/login/login.dart';
import 'package:iAttend/ui/views/profile/profile.dart';
import 'package:line_icons/line_icons.dart';

class BaseScreen extends StatefulWidget {
  //final Widget body;
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
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
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        elevation: 0,
        //leading: MyArc(diameter: 300),
        leading: Container(),
        toolbarHeight: 10,
      ),
      body: changeScreen(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: backColor, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: (Colors.grey[300])!,
              hoverColor: (Colors.grey[100])!,
              gap: 6,
              activeColor: fontColor,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color(0xff8acac0),
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.checkSquareAlt,
                  text: 'Attendance',
                ),
                GButton(
                  icon: LineIcons.calendarAlt,
                  text: 'Events',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                // print(index);
                // print(_selectedIndex);

                setState(
                  () {
                    _selectedIndex = index;

                    print(index);
                    print(_selectedIndex);

                    //changeScreen(_selectedIndex);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
