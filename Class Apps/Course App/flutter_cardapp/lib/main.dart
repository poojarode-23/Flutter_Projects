//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter/widgets.dart';

void main(){

  runApp(const MainApp());
}

class MainApp extends StatefulWidget{

  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cart",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
            padding:const  EdgeInsets.all(15),
            child: Row(
              children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/shoescard.jpg"),
              ),
              const SizedBox(
                height: 150,
                width: 15,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //padding: const EdgeInsets.all(10),
                children: [
                  SizedBox(
                    child: Text(
                      "Nike Shoes",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Text(
                      "with iconic style and legendary comfert, on repeat.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                    SizedBox(
                    height: 50,
                    //width: 150,
                    child: Text(
                      "\$450.00",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                SizedBox(
                  width: 30,
                ),
                Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.remove),
                    SizedBox(
                    
                      height: 50,
                      width: 50,
                      
                      
                    ),
                    Icon(Icons.add),
                  ],
                ),
                 
                  ],
                     
                  ),
                 
                  
                ],
                
              ),
            ],
              
            ),
           ),
           const SizedBox(
            height: 300,
           ),
            const Row(
             children: [
              Padding(padding: EdgeInsets.all(15)),
               SizedBox(
                //height: 200,
                width: 250,
                child: Text(
                  "subtotal:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               ),
               SizedBox(
                height: 20,
               ),
               SizedBox(
                //height: 200,
                width: 100,
                  child:Text(
                    "\$450.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ) ,
                ),
             ],
           ),
            const SizedBox(
                height: 20,
               ),
            const Row(
             children: [
              Padding(padding: EdgeInsets.all(15)),
               SizedBox(
                //height: 200,
                width: 250,
                child: Text(
                  "Delivary fee:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               ),
               SizedBox(
                //height: 200,
                width: 100,
                  child:Text(
                    "\$5.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ) ,
                ),
             ],
           ),
           
            const SizedBox(
                height: 20,
               ),
           const Row(
             children: [
              Padding(padding: EdgeInsets.all(15)),
               SizedBox(
                //height: 200,
                width: 250,
                child: Text(
                  "Discount:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               ),
               SizedBox(
                //height: 200,
                width: 100,
                  child:Text(
                    "40%.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ) ,
                ),
             ],
           ),
          const SizedBox(height: 30,),
          
          const Padding(padding: EdgeInsets.all(20)),
           SizedBox(
            height:60 ,
            width: 400,
             child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent), 
              child: const Text("Checkout for rs.480.00",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              
              ) ,
               ),
                //style: const ButtonStyle(backgroundColor: Color.blue),
              ),
           

          ],
        ),
      ),
    );
  }

}