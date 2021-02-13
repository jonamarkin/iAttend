import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:line_icons/line_icons.dart';

class DashboardCard extends StatefulWidget {
  final Color cardColor;

  final String cardName;

  final Function onTap;
  final IconData cardIcon;

  const DashboardCard(
      {Key key, this.cardColor, this.cardName, this.onTap, this.cardIcon})
      : super(key: key);
  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 5,
        //color: Color(0xffF5CE83),
        color: widget.cardColor,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.45,
          padding: EdgeInsets.all(
            10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: backColor,
                        maxRadius: 20,
                        child: Icon(
                          widget.cardIcon,
                          size: 28,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Text(
                      widget.cardName,
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline3,
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    LineIcons.arrowCircleRight,
                    size: 22,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}