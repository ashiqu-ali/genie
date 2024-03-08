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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Messages(isUser: true, message: "hey", date: "10:23"),
          const Messages(isUser: false, message: "Hello", date: "10:24"),
          const Spacer(),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: medium, vertical: small),
            child: Expanded(
              flex: 20,
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                child: TextFormField(
                  maxLines: 6,
                  minLines: 1,
                  controller: _userMessage,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(medium, 0, small, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(xlarge),
                      borderSide: BorderSide.none
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
            ),
                     ),

        ],
      ),
    );
  }
}
