import 'package:flutter/material.dart';

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

          title: const Text(
            "Listview Demo",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
              Image.network("https://th.bing.com/th/id/OIP.HxV79tFMPfBAIo0BBF-sOgHaEy?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              const Icon(
                Icons.favorite,
                color: Colors.red,
                ),
              const Text(
                "bhari",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                ),
                Image.network("://th.bing.com/th/id/OIP.HxVhttps79tFMPfBAIo0BBF-sOgHaEy?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                GestureDetector(
                    onTap: (){
                      print("Button Pressed");
                    },
                    child: Container(
                      height: 50,
                      width: 10,
                      color: Colors.amber,
                      child: const Text("Press me"),
                    ),
                    

                )
          ],
        ),
      ),
    );
  }
}