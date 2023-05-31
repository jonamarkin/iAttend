import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/models/Usermodel.dart';
import 'package:iAttend/ui/views/login/login.dart';
import 'package:iAttend/ui/widgets/base.dart';
import 'package:iAttend/ui/widgets/login/arc.dart';
import 'package:iAttend/ui/widgets/login/custom_textfield.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
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
          child: SingleChildScrollView(
            // autoScroll: true,
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
                        onSaved: (value) {
                          _emailController.text = value!;
                        },
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
                          validator: (value) {
                            RegExp regex = new RegExp(r'^.{3,}$');
                            if (value!.isEmpty) {
                              return ("Firstname cannot be Empty");
                            }
                            if (!regex.hasMatch(value)) {
                              return ("Enter Valid Name(Min. 3 Character");
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _firstnameController.text = value!;
                          },
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
                          onSaved: (value) {
                            _lastnameController.text = value!;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Last Name cannot be Empty");
                            }
                            return null;
                          },
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Group ID cannot be Empty");
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _groupIDController.text = value!;
                          },
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
                          onSaved: (value) {
                            _passwordController.text = value!;
                          },
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
                          onSaved: (value) {
                            _repeatPasswordController.text = value!;
                          },
                          validator: (value) {
                            if (_repeatPasswordController.text !=
                                _passwordController.text) {
                              return "Password don't match";
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
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8acac0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            elevation: 3.0,
                          ),
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          onPressed: () {
                            signUp(_emailController.text,
                                _passwordController.text);
                          },
                        ),
                      ),
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

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    // calling firestore
    // calling user model
    //  sending values
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    //  writing all values
    userModel.email = user!.email;
    userModel.uid = user!.uid;
    userModel.firstName = _firstnameController.text;
    userModel.lastName = _lastnameController.text;
    userModel.groupId = _groupIDController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully: )");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => BaseScreen()),
        (route) => false);
  }
}
