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
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Bem-vindo(a)!"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: double.infinity),
                child: Image.asset("asset/imgs/1.png"),
              ),
              SizedBox(height: 30),
              Text(
                "Seja bem-vindo(a) ao meu Portfólio",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text("Aqui você vai encontrar", style: TextStyle(fontSize: 17)),
              SizedBox(height: 20),
              Image.network(
                'https://th.bing.com/th/id/OIP.KABhol5JHNKrSm_9iJvGbAHaHa?pid=ImgDet&rs=1',
                height: 100,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                    Text("Um contador", )
                ],
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
                  Text("Um contador", ),
                ],
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
                 Text("Um contador", )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context, "/bemvindo.dart");
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_forward),
                        SizedBox(width: 8),
                        Text("Conceitos básicos \n da linguagem Dart"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Cor de fundo
                      onPrimary: Colors.white, // Cor do texto
                      elevation: 5, // Sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context, "/sobre.dart");
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_forward),
                        SizedBox(width: 8),
                        Text("Sobre"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Cor de fundo
                      onPrimary: Colors.white, // Cor do texto
                      elevation: 5, // Sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
