import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app8/HomeScreen.dart';
import 'package:flutter_app8/LargeImageScreen.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'dart:developer' as developer;

import 'SceondScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      //home: LargeImageScreen(),
    );
  }
}
