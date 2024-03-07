import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genie/utils/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primary1,
      appBar: AppBar(
        title: Text('Genie', style: heading1,),
        backgroundColor: primary1,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp, color: white,))
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: medium, horizontal: medium),
            width: width,
            height: height/1.127,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(medium), topRight: Radius.circular(medium)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(CupertinoIcons.person_alt_circle, size: 60),
                    SizedBox(width: xsmall),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ashiqu Ali", style: userName),
                        Text("Hey There", style: chatStyle),
                      ],
                    ),
                    const Spacer(),
                    Text("04:32", style: chatStyle)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(CupertinoIcons.person_alt_circle, size: 60),
                    SizedBox(width: xsmall),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ashiqu Ali", style: userName),
                        Text("Hey There", style: chatStyle),
                      ],
                    ),
                    const Spacer(),
                    Text("04:32", style: chatStyle)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
