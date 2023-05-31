import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';

class TeamsCard extends StatefulWidget {
  final Color cardColor;
  final Color barColor;
  final String teamName;
  final String teamMembers;

  const TeamsCard(
      {Key? key,
      required this.cardColor,
      required this.barColor,
      required this.teamName,
      required this.teamMembers})
      : super(key: key);
  @override
  _TeamsCardState createState() => _TeamsCardState();
}

class _TeamsCardState extends State<TeamsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color(0xffd3d3d3),
      //color: Color(0xffF5CE83),
      //color: widget.cardColor,
      color: Colors.white60,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            // VerticalDivider(
            //   color: greenColor,
            //   thickness: 10,
            // ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.barColor,
              ),
              width: 6,
              height: MediaQuery.of(context).size.height * 0.08,
              //color: greenColor,
              margin: const EdgeInsets.only(right: 4),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.teamName,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 25,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                Text(
                  widget.teamMembers,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
