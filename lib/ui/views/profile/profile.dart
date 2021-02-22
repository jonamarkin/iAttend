import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/base.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profile",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline2,
                  fontSize: 36,
                  color: fontColor,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                ),
              ),
              CircleAvatar(
                backgroundColor: fontColor,
                child: Text('JM'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
