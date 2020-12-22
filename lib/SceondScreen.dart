import 'package:flutter/material.dart';
import 'package:flutter_app8/DmmyStack.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'dart:developer' as developer;

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0;
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
    params: YoutubePlayerParams(
      playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  void _incrementCounter() {
    developer.log("Eslam Mohamed", name: "Ess", error: "increment");
    developer.debugger(when: _counter > 5, message: "counter greater than 5");
    //developer.inspect(myName);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          YoutubePlayerIFrame(
            controller: _controller,
            aspectRatio: 16 / 9,
          ),
          Image.asset('assets/images/monkey.jpg'),
          myName(),
          Text(_counter.toString()),
          RaisedButton(child: Text("Next"),
            onPressed: ()=>Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>DummyStack())
            ),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Text myName() => Text("Counter Mohamed");

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }
}
