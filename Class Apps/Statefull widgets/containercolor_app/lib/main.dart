import 'package:flutter/material.dart';

void main(){
  runApp(const ContainercolorApp());

}

class ContainercolorApp extends StatefulWidget{

  const ContainercolorApp({super.key});
  @override
  State<ContainercolorApp> createState() => _ContainercolorAppState();

}

class _ContainercolorAppState extends State<ContainercolorApp>{

  bool colorchange = true;

  Widget build(BuildContext context){

    return MaterialApp(

      title: "Container color App",
      home: Scaffold(
        appBar:AppBar(

          title:  const Text("Container color App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            
          width: 250,
          height: 250,
          color: Colors.amber,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child:  const Icon(Icons.forward),
        ),
      ),
    );
  }
}