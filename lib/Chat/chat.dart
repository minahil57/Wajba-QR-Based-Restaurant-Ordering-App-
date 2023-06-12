import 'package:flutter/material.dart';
// import 'package:flutter_chat/chatData.dart';
// import 'package:flutter_chat/chatWidget.dart';

class chat extends StatefulWidget {
  static const String id = "welcome_screen";
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  void initState() {
    super.initState();
   // ChatData.init("Just Chat",context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: ChatWidget.getAppBar(ChatData.appName),
        backgroundColor: Colors.white,
     //   body: ChatWidget.widgetWelcomeScreen(context));
    );
  }
}
