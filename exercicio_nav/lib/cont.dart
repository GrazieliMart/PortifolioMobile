import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      appBar: AppBar(centerTitle: true,title: Text("CONTADOR", style: TextStyle(fontSize: 20),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://pbs.twimg.com/media/FEF-zXhX0AkoCt7.jpg',
            width: 400,
            height: 200,
          ),
          SizedBox(height: 20),
          Text("Contador com Stateful Widget",style: TextStyle(fontSize: 20),),
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

          Text("Valor do contador: $numero",style: TextStyle(fontSize: 30)),
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
