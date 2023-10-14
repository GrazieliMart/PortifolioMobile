import 'package:flutter/material.dart';
import 'NavBar.dart';

class BemVindo extends StatefulWidget {
  const BemVindo({super.key});

  @override
  State<BemVindo> createState() => _BemVindoState();
}

class _BemVindoState extends State<BemVindo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfólio',
      theme: ThemeData(),
      home: Scaffold(
        drawer: NavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: double.infinity),
                child: Image.network(
                  'https://images.unsplash.com/photo-1557682250-33bd709cbe85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80',
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Be Welcome to my Portfolio!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text("Here you gonna find", style: TextStyle(fontSize: 20)),
              SizedBox(height: 30),
              Image.network(
                'https://th.bing.com/th/id/OIP.KABhol5JHNKrSm_9iJvGbAHaHa?pid=ImgDet&rs=1',
                height: 100,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text("Flutter Projects", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            
             
             
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), // Adicionando margens laterais
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Text(
                    "Welcome to my portfolio! Here you'll find a collection of my Flutter projects and more. Feel free to explore and enjoy!",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
               SizedBox(height: 30,),
              Divider(
                 thickness: 2,
                ),
                SizedBox(height: 30,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tag,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  
                  Text("Programs", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
                 SizedBox(height: 30),



                 Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Padding(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
     // color: Color.fromARGB(255, 191, 217, 255),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 3),
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      children: [
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/3625/3625050.png',
          width: 100,
          height: 100,
        ),
       
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           
          ],
        ),
      ],
    ),
  ),
),



Padding(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 191, 217, 255),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 3),
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      children: [
        Image.network(
          'https://cdn-icons-png.flaticon.com/512/167/167756.png',
          width: 100,
          height: 100,
        ),
       
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
          ],
        ),
      ],
    ),
  ),
),
                  ],




                 ),
             
SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }
}
