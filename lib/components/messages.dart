import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/style.dart';

class Messages extends StatelessWidget {
  final bool isUser;
  final String message;
  final String date;


  const Messages({
    super.key,
    required this.isUser,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(small),
      margin: EdgeInsets.symmetric(vertical: small).copyWith(
        left: isUser ? 100 : xsmall,
        right: isUser ? xsmall : 100,
      ),
      decoration: BoxDecoration(
        color: isUser ? userChat : resChat,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(xsmall),
          bottomLeft: isUser ? Radius.circular(xsmall) : Radius.zero,
          topRight: Radius.circular(xsmall),
          bottomRight: !isUser ? Radius.circular(xsmall) : Radius.zero,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
              message,
              style: messageText,
            ),
          Row(
            mainAxisAlignment: isUser ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              Text(
                "\n$date",
                style: dateText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}