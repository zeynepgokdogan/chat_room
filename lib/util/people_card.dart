import 'package:flutter/material.dart';
import 'package:chat_room/data/constants.dart';
import 'package:chat_room/util/people.dart';

class PeopleCard extends StatelessWidget {
  final People viewPeople;

  const PeopleCard({required this.viewPeople, Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
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
              },
              leading: Image.asset(
                // ignore: prefer_interpolation_to_compose_strings
                "assets/" + viewPeople.peopleImage,            
              ),
              title: Text(
                viewPeople.peopleName,
                style: listtileTitle,
              ),
              subtitle: Text(
                viewPeople.peopleDetail,
                style: listtileSubtitle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
