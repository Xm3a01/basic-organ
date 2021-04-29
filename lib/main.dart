import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import './models/AduioList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blue,
      // ignore: deprecated_member_use
      body: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   _play(String audio) {
     print(audio);
    setState(() {
     final player = AudioCache();
      player.play(audio);
    });
  }

  List<AudioList> audios = [
    AudioList('note1.wav', Colors.white),
    AudioList('note2.wav', Colors.white),
    AudioList('note3.wav', Colors.white),
    AudioList('note4.wav', Colors.white),
    AudioList('note5.wav', Colors.white),
    AudioList('note6.wav', Colors.white),
    AudioList('note7.wav', Colors.white),
    AudioList('note7.wav', Colors.white),
    AudioList('note7.wav', Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100),
      margin: EdgeInsets.all(100),
      color: Colors.black,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return FlatButton(
              color: audios[index].color,
              child: Text(''),
              onPressed: () {
                _play(audios[index].audio);
              },
            );
          },
          itemCount: audios.length,
      ),
    );
  }
}
