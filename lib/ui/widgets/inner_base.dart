import 'package:flutter/material.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';

class InnerPages extends StatefulWidget {
  final Widget body;

  const InnerPages({Key? key, required this.body}) : super(key: key);
  @override
  _InnerPagesState createState() => _InnerPagesState();
}

class _InnerPagesState extends State<InnerPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        elevation: 0,
        //leading: MyArc(diameter: 300),
        leading: Container(),
        toolbarHeight: 10,
      ),
      body: widget.body,
    );
  }
}
