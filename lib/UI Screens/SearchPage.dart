import 'package:connect/Styles/colors.dart';
import 'package:flutter/material.dart';

class MailSearch extends StatefulWidget {
  @override
  _MailSearchState createState() => _MailSearchState();
}

class _MailSearchState extends State<MailSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration.collapsed(
            hintText: "Search in mail",
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.mic,
              color: grey,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
