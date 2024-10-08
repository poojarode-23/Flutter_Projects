import 'package:flutter/material.dart';

void main(){

  runApp(const MainApp());

}

class MainApp extends StatelessWidget{

  const MainApp({super.key});

  @override
  Widget build (BuildContext context){

    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hello core2web",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}