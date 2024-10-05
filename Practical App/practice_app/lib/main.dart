
import 'package:flutter/material.dart';

voidmain(){

  runApp(const MainApp());
}

class MainApp extends StatelessWidget{

  const MainApp({super.key});
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("shoes"),
        ),
        body: Column(
            children: [
              Container(
                    height: 300,
                    width: 300,
                    color: Colors.white,
                    child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
                width: 180,
                child: Text("Nike Air Force 1:07",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

             const SizedBox(
              height: 10,
             ),
             Row(
                children: [
                  GestureDetector(

                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.horizontal(),
                        ),
                        child: const Text("Footwear") ,
                    ),
                  ),
                   GestureDetector(

                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.horizontal()
                        ),
                        child: const Text("shoes"),
                    ),
                  ),
                ],
             ),
             const SizedBox(
              height: 150,
              width: 300,
              child: Text("with iconic style and legendary comfort, the AF-1 was made to be repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era-echoing 80s construction and reflective-design swoosh logos."),
             ),
            ],
          ),
        
       ),
      );
    
  }
}