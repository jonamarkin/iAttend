import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  bool isLoading = false;

  signIn() async {
    setState(() {
      isLoading = true;
    });

    try {
      print("isLoading = " + isLoading.toString());
      Future.delayed(Duration(milliseconds: 5000), () async {
        // Do something
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _usernameController.text,
                password: _passwordController.text);
      });
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: CustomTextField(
                          color: Color(0xffd3d3d3),
                          controller: _passwordController,
                          cursorColor: fontColor,
                          labelColor: Colors.blueGrey,
                          labelText: "Password",
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
                      SpinKitRotatingCircle(
                        color: Colors.blue,
                        size: 50.0,
                      ),
                      isLoading
                          ? SpinKitRotatingCircle(
                              color: Colors.blue,
                              size: 50.0,
                            )
                          : Container(
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
                                  if (_formKey.currentState!.validate()) {
                                    // _signIn(
                                    //     _usernameController
                                    //         .text,
                                    //     _passwordController
                                    //         .text);

                                    signIn();

                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => BaseScreen(),
                                    //   ),
                                    // );
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
