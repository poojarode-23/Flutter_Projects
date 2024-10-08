import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const  Text(
            "Container"
          ),
          backgroundColor: Colors.pink,
        ),
       body:   SingleChildScrollView(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 100,
                color: Colors.amber,
            ),
           const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.pink,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.black38,
            ),

           const  SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.red,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.blue,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.teal,
            ),

            const SizedBox(
            height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.limeAccent,
            ),

             const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.lightBlueAccent,
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple,
            ),
          ],
          )
       ),
         
        
      ),
    );
  }
}
