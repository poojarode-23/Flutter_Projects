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
       body:   Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 150,
                width: 150,
               // color: Colors.amber,
                child:
                 Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-260nw-2212935531.jpg",
                  height: 150,
                width: 150,
                ),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
                height: 150,
                width: 150,
                //color: Colors.amber,
               child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
                height: 150,
                width: 150,
                ),
            ),

            const SizedBox(
              height: 20,
            ),

             Container(
                height: 150,
                width: 150,
               // color: Colors.amber,
               child: Image.network("https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg",
                height: 150,
                width: 150,
                ),
            ),
          ],
          )
       ),
         
        
      ),
    );
  }
}



