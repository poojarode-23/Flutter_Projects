
import 'package:flutter/material.dart';

void main(){

  runApp(const MainApp());

}

class MainApp extends StatelessWidget{

  const MainApp({super.key});
  
  @override

  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text(
            "Hello Core2web",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          actions:  [
            IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            )
            ),
           
          ],
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          
          height: 200,
          width: 360,
          color: Colors.blue,
        ),
      ),
    );
  }
}