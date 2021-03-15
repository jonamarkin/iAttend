import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:line_icons/line_icons.dart';

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
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
                  FontAwesomeIcons.bookOpen,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  "Send Request",
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
          "Requests",
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
      body: Container(),
    );
  }
}
