import 'package:chat_room/constants.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/util/departments.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: backGroundImage,
      child: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Departments(typeofDep: 'WEB DEVELOPMENT', infofDep: 'infofDep'),
              Departments(typeofDep: 'DESIGN', infofDep: ''),
              Departments(typeofDep: 'PHOTOGRAPHY', infofDep: ''),
              Departments(typeofDep: '', infofDep: ''),
              Departments(typeofDep: '', infofDep: ''),
              Departments(typeofDep: '', infofDep: ''),
              Departments(typeofDep: '', infofDep: ''),
            ],
          ),
        ),
      ),
    );
  }
}
