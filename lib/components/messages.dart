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
      padding: const EdgeInsets.all(small),
      margin: const EdgeInsets.symmetric(vertical: small).copyWith(
        left: isUser ? 150 : xsmall,
        right: isUser ? xsmall : 150,
      ),
      decoration: BoxDecoration(
        color: isUser ? userChat : resChat,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(xsmall),
          bottomLeft: isUser ? const Radius.circular(xsmall) : Radius.zero,
          topRight: const Radius.circular(xsmall),
          bottomRight: !isUser ? const Radius.circular(xsmall) : Radius.zero,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "$date",
                style: dateText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}