class MailContent {
  String subject;
  String time;
  String sender;
  String message;

  MailContent(this.subject, this.sender, this.time, this.message);
  String getSubject() => this.subject;
  String getSender() => this.sender;
  String getTime() => this.time;
  String getMessage() => this.message;
}

class MailGenerator {
  static var mailList = [
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "3:15 PM",
        "This is a simple demo mail..."),
  ];
  static MailContent getMailContent(int position) => mailList[position];
  static int mailListLength = mailList.length;
}
