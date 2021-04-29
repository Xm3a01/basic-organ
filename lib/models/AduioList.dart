import 'package:flutter/material.dart';


class AudioList {
 String audio;
 Color color;

 AudioList(this.audio , this.color);

 List<AudioList> audios() {
   return [
     AudioList('note1.wav' , Colors.red),
     AudioList('note2.wav' , Colors.blue),
     AudioList('note3.wav' , Colors.black),
     AudioList('note4.wav' , Colors.lightBlue),
     AudioList('note5.wav' , Colors.lightGreen),
     AudioList('note6.wav' , Colors.green),
     AudioList('note7.wav' , Colors.yellow),
   ];
 }
}