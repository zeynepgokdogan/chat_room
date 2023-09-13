import 'package:chat_room/util/deparments.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/data/constants.dart';

class CardDecoration extends StatelessWidget {
  final Departments viewDepartments;

  const CardDecoration({required this.viewDepartments, Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return SizedBox(
      height: 180,
      child: Card(
        color: cardColor,
        elevation: 10,
        shadowColor: shadowColor,
        child: InkWell(
          child: ListTile(
            onTap: () {},
            leading: Image.asset(
              // ignore: prefer_interpolation_to_compose_strings
              "assets/" + viewDepartments.DepartmentImage,            
            ),
            title: Text(
              viewDepartments.DepartmentName,
              style: listtileTitle,
            ),
            subtitle: Text(
              viewDepartments.DepartmentDetail,
              style: listtileSubtitle,
            ),
          ),
        ),
      ),
    );
  }
}
