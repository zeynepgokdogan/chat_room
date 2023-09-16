import 'package:chat_room/data/constants.dart';
import 'package:chat_room/data/strings.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  var personName = Strings.PEOPLE_NAMES[0];
  var personDetail = Strings.PERSON_DETAILS[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 400,
             
              padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 20.0 ),
              child: Row(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/people_1.jpeg'),
                        radius: 60,
                      ),
                      Icon(Icons.favorite_border,size: 30,),
                      Icon(Icons.message_outlined,size: 30,),
                      Icon(Icons.push_pin_outlined, size: 30,),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Container(
                    color: Colors.white70,
                    width: 230,
                    child: Column(
                      children: <Widget> [
                        Text(personName,style: listtileTitle,),
                        Expanded(
                          flex:1,
                          child: SingleChildScrollView(
                            child: Text(personDetail, style: const TextStyle(fontSize: 15),)
                          )),
                      
                      ]
                    ),
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
