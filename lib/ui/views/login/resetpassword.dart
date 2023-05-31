import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/widgets/login/custom_textfield.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  TextEditingController _emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
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
                  SizedBox(
                    height: _height / 15,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
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
                      SizedBox(
                        height: _height / 12,
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
                            'Submit',
                            style: TextStyle(
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                       
                          onPressed: () {
                            resetPassword(_emailController.text.trim());
                          },
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Future resetPassword(String email) async {
    if (_formKey.currentState!.validate()) {
      await _auth.sendPasswordResetEmail(email: email);
      Fluttertoast.showToast(msg: "Password Reset Email Sent").catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
