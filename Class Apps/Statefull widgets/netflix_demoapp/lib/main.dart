import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
void main(){

  runApp(const MainApp());
}

class MainApp extends StatelessWidget{

  const MainApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Netflix Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight :FontWeight.w500
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                    "Action Movies",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     
                       Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.asset("assets/tanaji.jpeg"),
                      ),
                       Container(
                        padding:const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.asset("assets/war.jpeg"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.asset("assets/seizedimage.jpeg"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.asset("assets/marjawan.jpeg"),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.asset("assets/badshaha.jpeg"),
                      ),
                    ],
                  ),
                  ),
                ],
               
            );
          },
        ),
      ),
    );
  }
}