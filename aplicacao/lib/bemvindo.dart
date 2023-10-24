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
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark ? 'DarkTheme': 'LightTheme';
    return Scaffold(
     
        drawer: NavBar(),
        
        body: SingleChildScrollView(
          child: Column(
            
            children: [
             
              SizedBox(height: 100),
              Text(
                "Be Welcome to my Portfolio!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text("Here you gonna find", style: TextStyle(fontSize: 20)),
              SizedBox(height: 30),
              Image.network(
                'https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png',
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
                  Text(
                    "Flutter Projects",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                       
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
              SizedBox(height: 30),

            ],
          ),
        
      ),
    );
  }
}
