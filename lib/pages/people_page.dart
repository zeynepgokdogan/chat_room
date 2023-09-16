import 'package:chat_room/data/constants.dart';
import 'package:chat_room/data/strings.dart';
import 'package:chat_room/pages/departments_page.dart';
import 'package:chat_room/util/people.dart';
import 'package:chat_room/util/people_card.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePage();
}

class _PeoplePage extends State<PeoplePage> {
  List<People> allDepartments = dataSourceP();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GeneralAppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: backGroundImage,
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return PeopleCard(viewPeople: allDepartments[index]);
            },
            itemCount: allDepartments.length,
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

List<People> dataSourceP() {
  List<People> temp = [];

  for (int i = 0; i < 6; i++) {
    var peopleName = Strings.PEOPLE_NAMES[i];
    var peopleDetail = Strings.PEOPLE_DETAILS[i];
    var peopleImage = 'people_' '${i + 1}.jpeg';
    People addPeople = People(peopleName, peopleDetail, peopleImage);
    temp.add(addPeople);
  }
  return temp;
}
