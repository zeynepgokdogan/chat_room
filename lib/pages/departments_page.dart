import 'package:chat_room/data/constants.dart';
import 'package:chat_room/util/department_card.dart';
import 'package:chat_room/util/deparments.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/data/strings.dart';

class DepartmentsPage extends StatelessWidget {
  late final List<Departments> allDepartments;

  DepartmentsPage({super.key}) {
    allDepartments = dataSourceD();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: backGroundImage,
      child: Center(     
        child: ListView.builder(
          itemBuilder: (context, index) {
            return DepartmentCard(viewDepartments: allDepartments[index]);
          },
          itemCount: allDepartments.length,
        ),
      ),
    );
  }

  List<Departments> dataSourceD() {
    List<Departments> temp = [];

    for (int i = 0; i < 7; i++) {
      var departmentName = Strings.DEPARTMENT_NAMES[i];
      var departmentDetail = Strings.DEPARTMENT_DETAILS[i];
      var departmentImage = 'department_' '${i+1}.jpeg';
      Departments addDepartment = Departments(departmentName, departmentDetail,departmentImage);
      temp.add(addDepartment);
    }
    return temp;
  }
}
