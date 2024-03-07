import 'package:flutter/cupertino.dart';

import '../utils/style.dart';

class ChatTile extends StatelessWidget {
  final String userName;
  final String lastMessage;
  final String time;
  const ChatTile({
    required this.userName,
    required this.lastMessage,
    required this.time,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(CupertinoIcons.person_alt_circle, size: 60),
        SizedBox(width: xsmall),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userName, style: userText),
            Text(lastMessage, style: chatStyle),
          ],
        ),
        const Spacer(),
        Text(time, style: chatStyle)
      ],
    );
  }
}
