import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});

  @override
  State createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State{
  TextEditingController nameController = TextEditingController();
  TextEditingController cmpNameContoller = TextEditingController();
  String? myName;
  List<Map> playerList = [];
  String? cmpName;

  @override 
  Widget build(BuildContext context){

    return Scaffold(
        appBar:  AppBar(
          title: const Text("Info",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body:  Column(
          children: [
            const SizedBox(
              height: 20,
            ),
          Padding(
            padding: const EdgeInsets.all(20),
          
           child: TextField(
              controller: nameController,
              style: const  TextStyle(
                fontSize: 15,
              ),
              decoration: const InputDecoration(
                  hintText: "Enter Name",
                  helperStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
              ),
            ),
          ),
           
            const SizedBox(
              height: 10,
            ),
          Padding(
            padding: const EdgeInsets.all(20),
          
           child: TextField(
              controller: cmpNameContoller,
              style: const  TextStyle(
                fontSize: 15,
              ),
              decoration: const InputDecoration(
                  hintText: "Enter Company Name",
                  helperStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
              ),
            ),
          ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){

                playerList.add({"name":nameController.text,"cmpName":cmpNameContoller.text});
                    cmpNameContoller.clear();
                    nameController.clear();
                    setState(() {});
               
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
                  child: const Text("Submit",
                  style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: ListView.builder(
                itemCount: playerList.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                    return Card(
                 
                      color: Colors.amber,
                      child: Column(
                         
                         children: [
                          
                             Text("Name :${playerList[index]["name"]}"),
                             Text("Company Name:${playerList[index]["cmpName"]}"),
                           
                           
                         ],
                      ),
                    );
                },
                ),
            ),
          ],
        ),
    );
  }
}