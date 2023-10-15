import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: SemiCircleClipper(),
                    child: Container(
                      color: Colors.blue, // Cor de fundo da forma
                      height: 150, // Altura da parte reta do semicírculo
                    ),
                  ),
                  Container(
                    width: 150, // Largura da parte curva do semicírculo
                    height: 150, // Altura da parte curva do semicírculo
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://www.collectorzown.com/cdn/shop/files/6c052db2-67e3-5951-9614-5bffa52e3827_1200x1200.jpg?v=1691592956',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(height: 30),
              Text(
                "Books - Personal Library",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                width: 300,
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Literature",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Here you gonna find my personal library\n You can look my readings and reviews",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Enjoy!",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Color.fromARGB(255, 198, 211, 214), // Cor de fundo do container roxo
                width: 400,
                height: 500, // Altura do novo container
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for books...",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Outros widgets relacionados à pesquisa de livros podem ser adicionados aqui
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SemiCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height) // Parte reta superior
      ..quadraticBezierTo( // Curva do semicírculo
        size.width / 2, 10,
        size.width, size.height,
      )
      ..lineTo(size.width, size.height); // Parte reta inferior

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
