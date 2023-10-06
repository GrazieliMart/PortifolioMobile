import 'package:exercicio_nav/bemvindo.dart';
import 'package:exercicio_nav/sobre.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cont.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indice = 0;
  List<Widget> _telas = [
  Bemvindo(),
  Cont(),
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
      
      
      
      body: 
     
      
      
      _telas[_indice],

      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _indice,
      onTap: _itemClicado,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Contador",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Sobre",
          ),

      ]
      
      ),
    
    



    );
  }
}