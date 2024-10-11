import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
      
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: const Text("Column eith Scroll",
          
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset("assets/hitman-king.jpeg"),
                Container(

                  height: 200,
                  width: 200,
                  //color: Colors.amber,
                ),
                Image.asset("assets/rohit sharma.jpeg"),

                Container(
                  height: 200,
                  width: 200,
                  //color: Colors.amber,
                ),
                Image.asset("assets/boom boom.jpg"),

                 Container(
                  height: 200,
                  width: 200,
                  //color: Colors.amber,
                ),
                ],
          ),
        ),
      ),
    );
  }
}
