import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){

    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  
  Widget build(BuildContext context){

    return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Aspect ratio",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,

          ),
          body:  Center(
            child: Container(
              height: 200,
              width: 300,
              color: Colors.amber,
              child: Image.asset("assets/rohit sharma.jpeg"),
            ),
          ),
    );
  }
}