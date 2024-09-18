import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playsound(int a)
  {
  final player=AudioPlayer();
  player.play(AssetSource('note$a.wav'));
  }

  Expanded newkey({required Color color,required int num})
  {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
        ),
      onPressed: (){
      playsound(num);
    }, child: Text('note$num',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        color: Colors.black
      ),
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              newkey(color: Colors.red,num: 1),
              newkey(color: Colors.orange,num: 2),
              newkey(color: Colors.yellow,num: 3),
              newkey(color: Colors.greenAccent,num: 4),
              newkey(color: Colors.green,num: 5),
              newkey(color: Colors.teal,num: 6),
              newkey(color: Colors.blue,num: 7),

            ],
          ),
        ),
      ),
    );
  }
}
