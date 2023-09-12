import 'package:chat_room/constants.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  const People({
    super.key,
    required this.typeofDep,
    required this.infofDep,
  });
  
  final String typeofDep;
  final String infofDep;


  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: 
          Card(
            color: cardColor,
            elevation: 10,
            shadowColor: shadowColor,
            child: InkWell(
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 25 ,
                  backgroundImage: AssetImage("assets/background.jpg") ,
                ),
                title: Text(widget.typeofDep,style: listtileTitle,),
                subtitle: Text(widget.infofDep, style: listtileSubtitle,),    
              ), 
            ), 
          ),   
    );
  }
}