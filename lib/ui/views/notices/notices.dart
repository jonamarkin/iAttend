import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:line_icons/line_icons.dart';

class Notices extends StatefulWidget {
  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
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
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  "Create Notice",
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
          "Notices",
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
        child: ListView(
          children: [
            ExpansionTileCard(
              borderRadius: BorderRadius.circular(5),
              // margin: EdgeInsets.all(0),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.black45,
              ),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "All members are to ensure that they payy their dues by Friday. Please report any payment challenges to the financial controller. Thank you.",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.headline3,
                          fontSize: 15,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                )
              ],
              baseColor: Colors.white,
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                width: 8,
                height: MediaQuery.of(context).size.height * 0.05,
                //color: greenColor,
                margin: const EdgeInsets.only(right: 4),
              ),
              title: Text(
                "Dues Payment",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline3,
                  fontSize: 18,
                  color: fontColor,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
