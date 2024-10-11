import 'dart:js_interop';

import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const HomeScreen();
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});


  @override 
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  TextEditingController nameController = TextEditingController();
  String? myName;
  List<String> PlayersList = [];

  @override 
  Widget build(BuildContext context){

    return MaterialApp(
      home:  Scaffold(
        appBar:  AppBar(
          title: const Text("Textfield Listview Demo",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print("Value : $val");
                },
                onEditingComplete: (){
                  print("Value Submitted");
                },
                onSubmitted: (value){
                  print("value submitted: $value");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("add data");

                myName = nameController.text.trim();
                print("My name : $myName");
                if(myName != ""){
                  PlayersList.add(myName!);
                  print("PlayersList length : ${PlayersList.length}");
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  const Text(
                  "add data ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            ListView.builder(
              itemCount: PlayersList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Text(
                "Name : ${PlayersList[index]}",
                style: const TextStyle(
                  fontSize: 20,
                ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}