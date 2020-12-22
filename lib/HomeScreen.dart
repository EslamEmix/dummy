import 'package:flutter/material.dart';

import 'SceondScreen.dart';
import 'model/Person.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    createPersons();
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("For Dummies App"),),
        body: Column(
          children: [
            Text("Welcome To Dummy App"),
            RaisedButton(child: Text("Next"),
            onPressed: ()=>Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>SecondScreen(title: "Dummy",))
            ),),
            Image.asset('assets/images/dummy.jpg'),
            Image.asset('assets/images/dummy.jpg'),

          ],
        ),
      ),
    );
  }


  void createPersons() {
    List<Person> p = [];
    for (var i = 0; i < 50; ++i) {
      if(i == 5)
        p.add(Person());

      p.add(Person(age:i,name: "Eslam Mohamed$i"));
    }
  }
}
