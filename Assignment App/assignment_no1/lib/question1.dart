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
            "Demo App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
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
            IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.forward,
              color: Colors.white,
            )
            ),
          ],
          //iconTheme: const IconThemeData.fallback(),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}