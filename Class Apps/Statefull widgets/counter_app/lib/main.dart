import 'package:flutter/material.dart';

void main(){

  runApp(const ContainerApp());
}

class ContainerApp extends StatelessWidget{

  const ContainerApp({super.key});
  @override
  Widget  build(BuildContext context){

    return const MaterialApp(

      title:"Counter App",

    );
  }
}

class CounterApp extends StatefulWidget{

  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp>{

  int count = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

      appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,

      ),

      body: Center(
        child: Text("$count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          count++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    ),
    );

  }
}
