import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/teams/teams_card.dart';
import 'package:line_icons/line_icons.dart';

class Teams extends StatefulWidget {
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
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
            // height: MediaQuery.of(context).size.height * 0.07,
            height: 15.0,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.plusCircle,
                  color: Colors.blueGrey,
                  size: 17,
                ),
                SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.05,
                  width: 2,
                ),
                Text(
                  "Create Team",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
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
          "Teams",
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
      body: Container(
        padding: EdgeInsets.all(
          12,
        ),
        child: ListView(
          children: [
            TeamsCard(
              barColor: greenColor,
              cardColor: Color(0xffF5CE83),
              teamMembers: "17 Members",
              teamName: "Soprano",
            ),
            TeamsCard(
              barColor: Color(0xffF5CE83),
              cardColor: greenColor,
              teamMembers: "27 Members",
              teamName: "Tenor",
            ),
            TeamsCard(
              barColor: greenColor,
              cardColor: Color(0xffF5CE83),
              teamMembers: "117 Members",
              teamName: "Alto",
            ),
            TeamsCard(
              barColor: Color(0xffF5CE83),
              cardColor: greenColor,
              teamMembers: "3 Members",
              teamName: "Bass",
            ),
          ],
        ),
      ),
    );
  }
}
