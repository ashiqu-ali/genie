import 'package:flutter/material.dart';
import 'package:genie/components/app_bar.dart';

import '../components/messages.dart';
import '../utils/style.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _userMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primary1,
      appBar: const MyAppBar(username: 'Ashiqu Ali',),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: medium, vertical: small),
            child: Expanded(
              flex: 20,
              child: TextFormField(
                maxLines: 6,
                minLines: 1,
                controller: _userMessage,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(medium, 0, small, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(xlarge),
                  ),
                  hintText: 'Type a message',
                  hintStyle: hintText,
                  suffixIcon: GestureDetector(
                    onTap: () {

                    },
                    child: Icon(
                      Icons.arrow_upward,
                      color: _userMessage.text.isNotEmpty ? Colors.white : const Color(0x5A6C6C65),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
