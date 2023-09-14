import 'package:chat_room/util/people.dart';
import 'package:chat_room/util/people_card.dart';
import 'package:flutter/material.dart';
import 'package:chat_room/data/strings.dart';
import 'package:chat_room/data/constants.dart';

class PeoplePage extends StatelessWidget {
  final List<People> allPeople;
  const PeoplePage({required this.allPeople, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: backGroundImage,
      child: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return PeopleCard(viewPeople: allPeople[index]);
          },
          itemCount: allPeople.length,
        ),
      ),
    );
  }

  List<People> dataSourceP() {
    List<People> temp = [];

    for (int i = 0; i < 5; i++) {
      var peopleName = Strings.PEOPLE_NAMES[i];
      var peopleDetail = Strings.PEOPLE_DETAILS[i];
      var peopleImage = 'department_' '${i + 1}.jpeg';
      People addPeople = People(peopleName, peopleDetail, peopleImage);
      temp.add(addPeople);
    }
    return temp;
  }
}
