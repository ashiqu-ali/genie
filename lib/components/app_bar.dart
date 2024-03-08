import 'package:flutter/material.dart';
import 'package:genie/utils/style.dart';
import 'title_area.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String username;

  const MyAppBar({
    required this.username,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary1,
      automaticallyImplyLeading: false,
      title: TitleArea(
        username: username,
      ),
    );
  }
}
