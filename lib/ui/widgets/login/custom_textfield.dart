import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final Color color;
  final Color labelColor;
  final Color cursorColor;
  final TextEditingController controller;
  final validator;
  final onSaved;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.color,
    required this.labelColor,
    required this.controller,
    required this.cursorColor,
    required this.validator,
    required this.onSaved,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,

      //color: Color(0xffF5CE83),
      decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            //color: Colors.red[500
            color: widget.color,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: TextFormField(
          validator: widget.validator,
          onSaved: widget.onSaved,
          controller: widget.controller,
          cursorColor: widget.cursorColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: widget.labelColor,
            ),
          ),
        ),
      ),
    );
  }
}
