import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/views/login/login.dart';
import 'package:iAttend/ui/widgets/login/arc.dart';
import 'package:iAttend/ui/widgets/login/custom_textfield.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repeatPasswordController = new TextEditingController();
  TextEditingController _groupIDController = new TextEditingController();
  TextEditingController _firstnameController = new TextEditingController();
  TextEditingController _lastnameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        elevation: 0,
        //leading: MyArc(diameter: 300),
        leading: Container(),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: KeyboardAvoider(
            autoScroll: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //MyArc(diameter: 50),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey,",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline6,
                        fontSize: 35,
                        color: fontColor,
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Sign Up Now",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline6,
                        fontSize: 35,
                        color: fontColor,
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // Row(
                //   children: [
                //     Text(
                //       "Already signed up? ",
                //       style: TextStyle(
                //         color: Colors.grey,
                //         fontSize: 16,
                //       ),
                //     ),
                //     Icon(
                //       FontAwesomeIcons.arrowAltCircleRight,
                //       size: 15,
                //     ),
                //     Text(
                //       " Login Now",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 16,
                //         color: Colors.blueGrey,
                //       ),
                //     ),
                //   ],
                // ),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                //Login textfields
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      // Add TextFormFields and ElevatedButton here.

                      CustomTextField(
                        color: Color(0xffF5CE83),
                        controller: _emailController,
                        cursorColor: fontColor,
                        labelColor: Colors.blueGrey,
                        labelText: "Email",
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _firstnameController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Firstname",
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _lastnameController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Lastname",
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _groupIDController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Group ID",
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _passwordController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Password",
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _repeatPasswordController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Repeat Password",
                        ),
                      ),

                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        children: [
                          Text(
                            "Exisiting user? ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.arrowAltCircleRight,
                            size: 15,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            ),
                            child: Text(
                              " Login Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        width: double.maxFinite,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: RaisedButton(
                          color: Color(0xff8acac0),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          elevation: 3.0,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // _signIn(
                              //     _usernameController
                              //         .text,
                              //     _passwordController
                              //         .text);
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
