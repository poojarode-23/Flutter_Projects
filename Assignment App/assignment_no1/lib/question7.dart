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
        scrollDirection: Axis.horizontal,
      
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: 150,
               // color: Colors.amber,
                child:
                 Image.network("https://pics.craiyon.com/2023-07-02/06404bdfa6e04bc5a2a103f4eb0ecaec.webp",
                  height: 300,
                width: 150,
                ),
            ),
            const SizedBox(
              width: 20,
            ),

            Container(
                height: 300,
                width: 150,
                //color: Colors.amber,
               child: Image.network("https://pics.craiyon.com/2023-09-18/4c7a3461fbed47a289656147f5f9ea15.webp",
                height: 300,
                width: 150,
                ),
            ),

            const SizedBox(
              width: 20,
            ),

             Container(
                height: 300,
                width: 150,
               // color: Colors.amber,
               child: Image.network("https://pics.craiyon.com/2023-07-02/06404bdfa6e04bc5a2a103f4eb0ecaec.webp",
                height: 300,
                width: 150,
                ),
            ),

             const SizedBox(
              width: 20,
            ),

             Container(
                height: 300,
                width: 150,
               // color: Colors.amber,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvm62p4T1UGmTXU9QWkRjEcEReFG7m2x1a-g&s",
                height: 300,
                width: 150,
                ),
            ),

             const SizedBox(
              width: 20,
            ),

             Container(
                height: 300,
                width: 150,
               // color: Colors.amber,
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9o9A6tTdWELCaJeqX1A3GHpVmS_GQbnkrPA&s",
                height: 300,
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



