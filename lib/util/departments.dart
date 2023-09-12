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
    return SizedBox(
      height: 180,
      child: 
          Card(
            color: cardColor,
            elevation: 10,
            shadowColor: shadowColor,
            child: InkWell(
              child: ListTile(
                onTap: () {

                },
                leading: const CircleAvatar(
                  radius: 25 ,
                  backgroundImage: AssetImage("assets/department_1.jpeg") ,
                ),
                title: Text(widget.typeofDep,style: listtileTitle,),
                subtitle: Text(widget.infofDep, style: listtileSubtitle,),    
              ), 
            ), 
          ),   
    );
  }
}
