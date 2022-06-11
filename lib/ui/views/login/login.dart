import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/views/dashboard/dashboard.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:iAttend/ui/widgets/login/arc.dart';
import 'package:beauty_textfield/beauty_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iAttend/ui/widgets/login/custom_textfield.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:iAttend/ui/views/login/signup.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

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
                MyArc(diameter: 50),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
                      "Login Now",
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
                Row(
                  children: [
                    Text(
                      "If you are new ",
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
                          builder: (context) => SignUpPage(),
                        ),
                      ),
                      child: Text(
                        " Create New",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                //Login textfields
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      // Add TextFormFields and ElevatedButton here.

                      CustomTextField(
                        color: Color(0xffF5CE83),
                        controller: _usernameController,
                        cursorColor: fontColor,
                        labelColor: Colors.blueGrey,
                        labelText: "Username",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please Enter Your Email");
                          }
                          // reg for email validation
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]")
                              .hasMatch(value)) {
                            return ("Please Enter a valid email");
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _usernameController.text = value!;
                        },
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: CustomTextField(
                          onSaved: (value) {
                            _passwordController.text = value!;
                          },
                          color: Color(0xffd3d3d3),
                          controller: _passwordController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Password",
                          validator: (value) {
                            RegExp regex = new RegExp(r'^.{6,}$');
                            if (value!.isEmpty) {
                              return ("Password required");
                            }
                            if (!regex.hasMatch(value)) {
                              return ("Enter Valid Password(Min. 6 Character");
                            }
                            return null;
                          },
                        ),
                      ),

                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        children: [
                          Text(
                            "Forgot Password? ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.arrowAltCircleRight,
                            size: 15,
                          ),
                          Text(
                            " Reset",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blueGrey,
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
                            'LOGIN',
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
                            signIn(_usernameController.text,
                                _passwordController.text);
                            // if (_formKey.currentState!.validate()) {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => BaseScreen(),
                            //     ),
                            //   );
                            // }
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

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                  MaterialWithModalsPageRoute(
                      builder: (context) => BaseScreen()),
                ),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
