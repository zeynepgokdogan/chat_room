import 'package:chat_room/constants.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/util/people.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
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
              People(typeofDep: 'John doe', infofDep: 'infofDep'),
              People(typeofDep: 'John doe', infofDep: 'infofDep'),
              People(typeofDep: 'John doe', infofDep: 'infofDep'),
              People(typeofDep: 'John doe', infofDep: 'infofDep'),
              People(typeofDep: 'John doe', infofDep: 'infofDep'),
            ],
          ),
        ),
      ),
    );
  }
}