import 'package:flutter/material.dart';
import 'package:chat_room/constants.dart';

class Departments extends StatefulWidget {
  const Departments({
    super.key,
    required this.typeofDep,
    required this.infofDep,
  });
  
  final String typeofDep;
  final String infofDep;

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(Object context) {
    return Card(
      color: cardcolor,
      elevation: 10,
      shadowColor: Colors.black,
      child: InkWell(
        child: ListTile(
          title: Text(widget.infofDep,style: listtileTitle,),
          subtitle: Text(widget.typeofDep, style: listtileSubtitle,),

        ),
      ),
    );
  }
}
