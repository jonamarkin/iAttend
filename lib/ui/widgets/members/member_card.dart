import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemberCard extends StatefulWidget {
  final String memberName;
  final String memberPosition;
  final String initials;
  const MemberCard({
    Key? key,
    required this.memberName,
    required this.memberPosition,
    required this.initials,
  }) : super(key: key);
  @override
  _MemberCardState createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Card(
        color: Color(0xfff4f4f4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  widget.initials,
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.memberName,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline3,
                      fontSize: 18,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    widget.memberPosition,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline3,
                      fontSize: 14,
                      color: Colors.blueGrey,
                      //fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                    ),
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
