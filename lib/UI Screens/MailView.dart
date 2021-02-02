import 'dart:convert';
import 'package:connect/Styles/Style.dart';
import 'package:connect/Styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MailView extends StatefulWidget {
  @override
  _MailViewState createState() => _MailViewState();
}

class _MailViewState extends State<MailView> {
  Widget _selectPopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text("First"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Second"),
          ),
        ],
        initialValue: 2,
        onCanceled: () {
          print("You have canceled the menu.");
        },
        onSelected: (value) {
          print("value:$value");
        },
        icon: Icon(
          Icons.more_vert,
          color: grey,
        ),
      );

  var showMore = false;
  WebViewController _webViewController;
  static String html = '''
<!DOCTYPE html>
<html>
<head>
<style>
h1 {
  color: blue;
  font-family: verdana;
  font-size: 300%;
}
p {
  color: red;
  font-family: courier;
  font-size: 160%;
}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
''';

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
        actions: [
          IconButton(
            icon: Icon(
              Icons.archive_outlined,
              color: grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.delete_outline,
              color: grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.mail_outline,
              color: grey,
            ),
            onPressed: () {},
          ),
          _selectPopup()
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: ListTile(
              title: Text(
                "In December, you had 44 users Visit your website (Google Analytics)",
                style: textHeading,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.star_border,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              3.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Text(
                        "G",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    title: Text(
                      "Google Analytics",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: InkWell(
                      onTap: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Text("to me"),
                            showMore
                                ? Icon(Icons.keyboard_arrow_up)
                                : Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("11:36 AM"),
                    IconButton(
                      icon: Icon(
                        Icons.reply_rounded,
                        color: grey,
                      ),
                      onPressed: () {},
                    ),
                    _selectPopup(),
                  ],
                )
              ],
            ),
          ),
          if (showMore)
            Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: Text("From"),
                        title: Text(
                          "rathimna from Crio.Do",
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: Text("Reply-to"),
                        title: Text(
                          "cwod@criodo.com",
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: Text("To"),
                        title: Text(
                          "bharattiwari9926@gmail.com",
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: Text("Date"),
                        title: Text(
                          "Jan 9, 2021, 4:02 PM",
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: Icon(
                          Icons.lock,
                        ),
                        title: Text(
                          "Standard encryption (TLS).",
                        ),
                        subtitle: Text(
                          "View Security details",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.87,
              child: WebView(
                initialUrl: '',
                gestureRecognizers: Set()
                  ..add(
                    Factory<VerticalDragGestureRecognizer>(
                      () => VerticalDragGestureRecognizer(),
                    ),
                  ),
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                  _loadHtmlFromAssets();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              bottom: 12.0,
              top: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlineButton.icon(
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.reply_sharp,
                    color: Colors.grey[600],
                  ),
                  label: Text(
                    "Reply",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                OutlineButton.icon(
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.reply_all_sharp,
                    color: Colors.grey[600],
                  ),
                  label: Text(
                    "Reply all",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                OutlineButton.icon(
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.forward_sharp,
                    color: Colors.grey[600],
                  ),
                  label: Text(
                    "Forward",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _loadHtmlFromAssets() async {
    _webViewController.loadUrl(Uri.dataFromString(html,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
