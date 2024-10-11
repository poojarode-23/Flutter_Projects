import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
 
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{

  TextEditingController nameController = TextEditingController();

  String? myName;
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title:  const Text("TextField Demo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
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
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 20,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val){
                  print("Value :$val");
                },
                onEditingComplete: (){
                  print("Editing completed");
                },
                onSubmitted: (value){
                  print("Value submitted: $value");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("add Data");
                myName = nameController.text;
                print("My Name : $myName");
                nameController.clear();
                setState((){});
              
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),

                decoration: BoxDecoration(
                  color:  Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("Add Data",
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
            Text(
              "Name: $myName",
              style: const TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

