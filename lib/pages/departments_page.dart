import 'package:chat_room/data/constants.dart';
import 'package:chat_room/util/departments_card.dart';
import 'package:chat_room/util/deparments.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/data/strings.dart';

class DepartmentsPage extends StatefulWidget {
 
 const DepartmentsPage({Key? key}) : super(key: key);

  @override
  State<DepartmentsPage>  createState() => _DepartmentsPage();

}

class _DepartmentsPage extends State<DepartmentsPage> {
    List<Departments> allDepartments = dataSourceD();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        leading: IconButton(
          icon: appbarBackIcon,
          color: appbarIcon,
          onPressed: () => Navigator.of(context).pop(),
          ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: backGroundImage,
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return DepartmentsCard(viewDepartments: allDepartments[index]);
            },
            itemCount: allDepartments.length,
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

}

List<Departments> dataSourceD() {
    List<Departments> temp = [];

    for (int i = 0; i < 7; i++) {
      var departmentName = Strings.DEPARTMENT_NAMES[i];
      var departmentDetail = Strings.DEPARTMENT_DETAILS[i];
      var departmentImage = 'department_' '${i + 1}.jpeg';
      Departments addDepartment =
          Departments(departmentName, departmentDetail, departmentImage);
      temp.add(addDepartment);
    }
    return temp;
}
