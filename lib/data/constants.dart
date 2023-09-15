import 'package:flutter/material.dart';

const listtileTitle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const listtileSubtitle = TextStyle(
  fontSize: 15.0,
  color: Colors.black,
);

const Color cardColor = Colors.white70;
const Color shadowColor = Colors.black;
const Color appbarIcon = Color.fromARGB(255, 126, 55, 226);
const Color navigationBarColor = Color.fromARGB(255, 126, 55, 226);

const BoxDecoration backGroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/background.jpg"),
    fit: BoxFit.cover,
  ),
);

const Icon appbarBackIcon = Icon(Icons.arrow_back_ios);

BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
  currentIndex: 1,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '',
      backgroundColor: navigationBarColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person), 
      label: '', 
      backgroundColor: navigationBarColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message), 
      label: '', 
      backgroundColor: navigationBarColor,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people), 
      label: '', 
      backgroundColor: navigationBarColor,
   ),
  ],
);
