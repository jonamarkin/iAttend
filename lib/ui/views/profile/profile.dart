import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

  void activatebio() {}
  Future<void>? _launched;
  String _phone = '+233 547 362 101';

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendEmail(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: CircleAvatar(
                        //backgroundColor: Colors.red,
                        backgroundImage: AssetImage("assets/images/ato.jpg"),
                        //minRadius: 5,
                        radius: 60,
                      ),
                    ),
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Jonathan Ato Markin ',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline2,
                              fontSize: 22,
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              //fontStyle: FontStyle.italic,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\nTenor Part Leader',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  //fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Column(
                children: [
                  Row(
                    //mainAxisAlignment: ,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blueGrey,
                        size: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _launched = _makePhoneCall('tel:$_phone');
                          });
                        },
                        child: Text(
                          "+233 547 362 101",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 15,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    //mainAxisAlignment: ,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.blueGrey,
                        size: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          final Uri params = Uri(
                            scheme: 'mailto',
                            path: 'jona10711@gmail.com',
                          );
                          String url = params.toString();
                          setState(() {
                            _launched = _sendEmail(url);
                          });
                        },
                        child: Text(
                          "jona10711@gmail.com",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Divider(
                thickness: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "500",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 18,
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "Present",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 15,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                      //color: Colors.red,
                    ),
                    Column(
                      children: [
                        Text(
                          "210",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 18,
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "Absent",
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 15,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ListTile(
                //shape: RoundedRectangleBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                leading: Icon(
                  LineIcons.userEdit,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                title: Text(
                  "Personal Details",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.w500,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: Icon(
                  LineIcons.arrowRight,
                  color: Colors.blueGrey,
                  size: 20,
                ),
              ),
              ListTile(
                //shape: RoundedRectangleBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                leading: Icon(
                  LineIcons.questionCircle,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                title: Text(
                  "FAQ",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.w500,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: Icon(
                  LineIcons.arrowRight,
                  color: Colors.blueGrey,
                  size: 20,
                ),
              ),
              ListTile(
                //shape: RoundedRectangleBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                leading: Icon(
                  LineIcons.shareSquare,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                title: Text(
                  "Tell a Friend",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.w500,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: Icon(
                  LineIcons.arrowRight,
                  color: Colors.blueGrey,
                  size: 20,
                ),
              ),
              ListTile(
                //shape: RoundedRectangleBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                leading: Icon(
                  LineIcons.fingerprint,
                  color: Colors.blueGrey,
                  size: 20,
                ),
                title: Text(
                  "Activate Touch / Face ID",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.caption,
                    fontSize: 18,
                    color: fontColor,
                    fontWeight: FontWeight.w500,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(
                      () {
                        isSwitched = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            children: [
              Divider(
                thickness: 1,
              ),
              ListTile(
                //shape: RoundedRectangleBorder(),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
                leading: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Colors.red[400],
                  size: 20,
                ),
                title: Text(
                  "Log Out",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 20,
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ],
      ),
    );
  }
}
