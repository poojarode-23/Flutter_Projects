import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container with Red Border and Rounded Corners',
      home: Scaffold(
        appBar: AppBar(
          title:  const Text('Rounded Container'),
        ),


        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red, 
                width: 4.0, 
              ),
              borderRadius: BorderRadius.circular(20), 
            ),
           
          ),
        ),
      ),
    );
  }
}
