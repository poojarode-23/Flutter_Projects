import 'package:flutter/material.dart';

void main(){

  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{

  const PlayerApp({super.key});
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp>{

  int counter = 0;

  List<String> playerList = <String>[
       
       "assets/hitman-king.jpeg",
       "assets/rohit sharma.jpeg",
       "assets/vkohli.jpeg",
       "assets/boom boom.jpg",
       "assets/msd.jpg",
       "assets/sachin tendulkar.jpeg",
       "assets/shikar dhavan.jpeg",
       "assets/yuvraj singh.jpeg",

  ];

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: "Players",
      home: Scaffold(
        appBar:AppBar(

          title:  const Text("Player"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [

              Image.asset(
                playerList[counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

              if(counter < playerList.length -1){
                counter++;
              }else{
                counter = 0;
              }
              setState((){});

          },
          tooltip: "Increment",
          child: const Icon(Icons.add),
        ), 
      ),

    );
  }
}