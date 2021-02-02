import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  "Gmail",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                "Primary",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              trailing: Text(
                "99+",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text(
                "Social",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.tag),
              title: Text(
                "Promotions",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              trailing: Text(
                "99+",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Text(
                  "ALL LABELS",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
