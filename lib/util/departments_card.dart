import 'package:chat_room/pages/people_page.dart';
import 'package:chat_room/util/deparments.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/data/constants.dart';

class DepartmentsCard extends StatelessWidget {
  final Departments viewDepartments;

  const DepartmentsCard({required this.viewDepartments, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 180,
        child: Card(
          color: cardColor,
          elevation: 10,
          shadowColor: shadowColor,
          child: InkWell(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PeoplePage()));
              },
              leading: Image.asset(  
                // ignore: prefer_interpolation_to_compose_strings
                "assets/" + viewDepartments.departmentImage,
              ),
              title: Text(
                viewDepartments.departmentName,
                style: listtileTitle,
              ),
              subtitle: Text(
                viewDepartments.departmentDetail,
                style: listtileSubtitle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
