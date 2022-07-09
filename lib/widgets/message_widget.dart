import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/message.dart';
import 'date_widget.dart';

class SingleMessage extends StatelessWidget {
  final Message msg;
  final bool ownMsg;

  SingleMessage({required this.msg, required this.ownMsg});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: ownMsg ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: (ownMsg)
                ? const EdgeInsets.fromLTRB(40, 0, 0, 0)
                : const EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Card(
              color: ownMsg ? Colors.red : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                      child: Text(
                        msg.text,
                        style: TextStyle(
                            color: !ownMsg ? Colors.black : Colors.white,
                            fontSize: 15),
//              textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          DateFormat.jm().format(
                              DateTime.fromMillisecondsSinceEpoch(
                                  msg.msgDateTimeInMilis)),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}