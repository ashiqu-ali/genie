import 'package:flutter/material.dart';
import 'package:genie/pages/signin_page.dart';
import 'package:genie/pages/signup_page.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'genie',
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
