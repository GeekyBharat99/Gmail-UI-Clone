import 'package:connect/Styles/Style.dart';
import 'package:connect/Styles/colors.dart';
import 'package:flutter/material.dart';

class ComposeMail extends StatefulWidget {
  @override
  _ComposeMailState createState() => _ComposeMailState();
}

class _ComposeMailState extends State<ComposeMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Compose",
          style: TextStyle(
            fontSize: 20.0,
            color: black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.attach_file,
                color: grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.send,
                color: grey,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: grey,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: Text(
              "From",
              style: greyText,
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "bharattiwari9926@gmail.com",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: grey,
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Text(
              "To",
              style: greyText,
            ),
            title: TextField(
              autofocus: true,
              decoration: InputDecoration.collapsed(
                hintText: "",
                border: InputBorder.none,
              ),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_down,
              color: grey,
            ),
          ),
          Divider(),
          ListTile(
            title: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Subject",
                border: InputBorder.none,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: null,
              decoration: InputDecoration.collapsed(
                border: InputBorder.none,
                hintText: "Compose email",
              ),
            ),
          )
        ],
      ),
    );
  }
}
