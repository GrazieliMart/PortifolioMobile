import 'package:flutter/material.dart';

class Cont extends StatefulWidget {
  const Cont({super.key});

  @override
  State<Cont> createState() => _ContState();
}

class _ContState extends State<Cont> {
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/5673/5673753.png',
            width: 400,
            height: 200,
          ),
          SizedBox(height: 20),
          Text("Counter Stateful Widget",style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
             FloatingActionButton(
                onPressed: adicionar,
                child: Icon(Icons.add),
              ),
              SizedBox(width: 20),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(shape:BoxShape.circle,color:Colors.blue,),
          child: Center(
          child: Text(
                '$numero',
                style: TextStyle(fontSize: 36),
              ),),),
            
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: diminuir,
                child: Icon(Icons.remove),
              ),
            ],
          ),
          SizedBox(height: 20,),

          Text("Counter value: $numero",style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }

  void adicionar() {
    setState(() {
      numero++;
    });
  }

  void diminuir() {
   setState(() {
      numero--;
    });
  }
}
