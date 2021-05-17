import 'package:chat_app/chat/widget/messages_widget.dart';
import 'package:chat_app/chat/widget/new_message_widget.dart';
import 'package:chat_app/chat/widget/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    //   var messagesWidget = MessagesWidget;
    var newMessageWidget = NewMessageWidget;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: [
              ProfileHeaderWidget(
                name: 'Pamoda Sandeepa',
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: MessagesWidget(idUser: "PfJuBhUnhIoPgaXw0UmK"),   //meeting id
                ),
              ),
              NewMessageWidget(
                idUser: "PfJuBhUnhIoPgaXw0UmK",   //meeting id
              )
            ],
          ),
        ));
  }
}
