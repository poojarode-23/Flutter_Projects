//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main(){

  runApp(const MainApp());
}

class MainApp extends StatefulWidget{

  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context){

    List<Color> containerColors = [
        const Color.fromRGBO(250, 232, 232, 1),
        const Color.fromRGBO(232, 237, 250, 1),
        const Color.fromRGBO(250, 249, 232, 1),
    ];

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "To-do List",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          ),

          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){

            return  Column(
            children: [
              const SizedBox(
                height: 15,
                width: 243,
              ),
              Container(
                width: 330,
                height: 112,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                   color: containerColors[index % containerColors.length],
                   

                ),
                child: Column(
                  children: [
                    Row(
                        children: [
                          const SizedBox(
                            height: 52,
                            width: 10,
                          ),
                          Container(
                                //child: IconButton(icon: Icon.photo,),
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  
                                ),  
                                child: const Icon(Icons.image,
                                size: 40,
                               // color: Color.fromRGBO(r, g, b, opacity),
                                ),
                          ),
                          const SizedBox(
                            height: 52,
                            width: 15,
                          ),
                          const Column(
                            children: [
                           SizedBox(
                            height: 15,
                            width: 243,
                            child:  Text("Lorem Ipsum is simply setting industry.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0,0,0,1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 243,

                          ),
                           SizedBox(
                            height: 55,
                            width: 250,
                            child:  Text(
                              "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(84, 84, 84, 1),
                                ),
                            ),
                          ),
                            ],
                          ),
                        ],
                    ),
                     const Row(
                      children: [
                       
                       Text("10 July 2024",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                        
                        Spacer(),
                         Icon(Icons.edit),
                        Icon(Icons.delete),
                       
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
            }
          ),
        ),
    );
  }
}

