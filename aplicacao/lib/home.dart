import 'package:aplicacao/cont.dart';
import 'package:aplicacao/sobre.dart';
import 'package:flutter/material.dart';
import 'bemvindo.dart';
import 'NavBar.dart';
import 'book.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

int _indice = 0;
  List<Widget> _telas = [
  BemVindo(),
  Cont(),
  Book(),
  Sobre(),
];



  void _itemClicado(int index){
  setState(() {
    _indice=index;  
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          
        ),
      body: 
     
      
      
      _telas[_indice],

      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _indice,
      selectedItemColor: Colors.lightBlue, // Defina a cor quando selecionado
      unselectedItemColor: Color.fromARGB(255, 4, 40, 107),
      onTap: _itemClicado,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, ),
            label: "Counter",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,  ),
            label: "Books",
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: "About", 
          ),

      ]
      
      ),
    
    



    );
  }
}