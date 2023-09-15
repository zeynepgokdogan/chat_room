import 'package:chat_room/data/constants.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: appbarBackIcon,
          color: appbarIcon,
          onPressed: () => Navigator.of(context).pop(),
          ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: backGroundImage,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}