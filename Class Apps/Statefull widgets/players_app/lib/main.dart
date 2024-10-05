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
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/348100/348106.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4ogMhS7cIhyqU3rVUI9MriaP7RB0buHXmA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoFUx-9c2FS0Flj2pcoApdrBnNW17cXl51Fw&s",
    "https://img.olympics.com/images/image/private/t_s_16_9_g_auto/t_s_w960/f_auto/primary/mpkqvclcpg3texaauqsd",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScNEwDRY7TKxpUq-EumY2a9sTV1ZvBQ_VdYQ&s",

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

              Image.network(
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