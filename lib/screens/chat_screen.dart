import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/message.dart';
import '../widgets/message_widget.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<Message> messages = [];
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
              }),
        ],
        title: const Text('⚡️Chat'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageController ,
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if(messageController.text!=""){
                        setState((){
                          messages.add(Message(text: messageController.text, msgDateTimeInMilis: DateTime.now().millisecondsSinceEpoch, authorId: "abc", imgUrl: null));
                        });
                        messageController.clear();
                      }
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                  itemBuilder: (context,index){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SingleMessage(ownMsg: true, msg: Message(text: messages[index].text, msgDateTimeInMilis: DateTime.now().millisecondsSinceEpoch, authorId: "abc", imgUrl: null), ),
                        SingleMessage(ownMsg: false,msg: Message(text: "${messages[index].text} again", msgDateTimeInMilis: DateTime.now().millisecondsSinceEpoch, authorId: "abc", imgUrl: null) ),
                      ],
                    );
                  }

              ),
            )
          ],
        ),
      ),
    );
  }
}

