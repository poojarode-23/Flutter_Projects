import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{

  const MyApp({super.key});
  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "India Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget{
  const MyScreen({super.key});
  @override  
  Widget build (BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: const Text("India Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 510,
              width: 10,
              color: Colors.black,
              
            ),
            Column(

              children: [
                const SizedBox(
                  height: 150,
                ),
              
            
      
            Container(
              width: 300,
              height: 45,
              color: Colors.orange,
            ),
            Container(

              width: 300,
              height: 42,
              color: Colors.white,
              child: Image.network("https://th.bing.com/th/id/OIP.g3D5sNLkvx049qfMJ22tBAHaHa?pid=ImgDet&w=184&h=184&c=7&dpr=1.3"),
            ),
            Container(
              width: 300,
              height: 45,
              color: Colors.green,
            )
            ],
        ),
        ],
        ),
      ),
    );
  }
}

