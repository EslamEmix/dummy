import 'package:flutter/material.dart';

import 'SceondScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("For Dummies App"),),
        body: Column(
          children: [
            Text("Welcome To Dummy App"),
            RaisedButton(child: Text("Next"),
            onPressed: ()=>Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>SecondScreen())
            ),),
            Image.asset('assets/images/dummy.jpg'),
            Image.asset('assets/images/dummy.jpg'),

          ],
        ),
      ),
    );
  }
}
