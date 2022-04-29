import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/members/member_card.dart';
import 'package:line_icons/line_icons.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  TextEditingController _searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonTheme(
        child: ElevatedButton(
          style: ButtonStyle(
            //backgroundColor:
            backgroundColor: MaterialStateProperty.all<Color>(
              greenColor,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              backColor,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(
                  color: greenColor,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Container(
            height: 15,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.userPlus,
                  color: Colors.blueGrey,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Add Member",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 15,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: backColor,
      appBar: AppBar(
        title: Text(
          "Members",
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headline2,
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
      body: Container(
        padding: EdgeInsets.all(
          12,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.06,

              //color: Color(0xffF5CE83),
              decoration: BoxDecoration(
                  color: Color(0xffd3d3d3),
                  border: Border.all(
                    //color: Colors.red[500
                    color: Color(0xffd3d3d3),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: TextFormField(
                  controller: _searchController,
                  cursorColor: Colors.blueGrey,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.sort_outlined,
                      color: Colors.blueGrey,
                    ),
                    border: InputBorder.none,
                    hintText: "Search members",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: ListView(
                children: [
                  MemberCard(
                    initials: "F",
                    memberName: "Francis Kwame Nyamekeh",
                    memberPosition: "Bass Part Leader",
                  ),
                  MemberCard(
                    initials: "G",
                    memberName: "Gordon Quaye",
                    memberPosition: "Director of Music",
                  ),
                  MemberCard(
                    initials: "F",
                    memberName: "Kwabena Asante",
                    memberPosition: "Administrator",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
