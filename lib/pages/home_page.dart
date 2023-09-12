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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Departments(typeofDep: 'Web development', infofDep: 'infofDep'),
              Departments(typeofDep: 'csdf', infofDep: 'infofDep'),
            ],
          ),
        ),
      ),
    );
  }
}
