import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genie/utils/style.dart';

class TitleArea extends StatelessWidget {
  final String username;

  const TitleArea({super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new_outlined, size: 24),
        ),
        Icon(CupertinoIcons.person_alt_circle, size: 36),
        SizedBox(width: 8),
        Text(username, style: heading1),
      ],
    );
  }
}
