import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              ClipOval(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://media.licdn.com/dms/image/D4D03AQE1P4XUwQWYSA/profile-displayphoto-shrink_800_800/0/1693327273329?e=1701907200&v=beta&t=9Hlv41cxz8VrnM5cwsk1Xnlt-w5hzqk2XUqR3BFDak0',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Grazieli Martins",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(0, 255, 255, 255),
                ),
                width: 300,
                child: Column(
                  children: [
                    SizedBox(height: 2),
                    Text(
                      "Web Developer\n ",
                      style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Html | Java | PHP | Flutter",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Systems Development Technique",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1),
                    Text(
                      ' \n Learning focus on programming \n HTML, CSS, Java Script, PHP, Flutter, Java \n and other programming languages.',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ' Intermediate English',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      ' Conect with me',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                        onTap: () {
                           launch('https://github.com/GrazieliMart',);
                          },
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/25/25231.png', 
                            width: 25,
                            height: 25,
                          ),
                        ),
                        SizedBox(width: 25),
                        InkWell(
                          onTap: () {
                           launch('https://www.linkedin.com/in/grazieli-freitas-martins-61329b258/',);
                          },
                          child: Image.network(
                            'https://brunopalmahidroponia.com.br/wp-content/uploads/2020/07/logo-instagram-png-fundo-transparente.png', // Substitua pelo caminho da sua imagem
                            width: 25,
                            height: 25,
                          ),
                        ),
                        SizedBox(width: 20),
                        InkWell(
                         onTap: () {
                           launch('https://www.instagram.com/grazi.mart/',);
                          },
                          child: Image.network(
                            'https://static.vecteezy.com/system/resources/previews/018/930/587/non_2x/linkedin-logo-linkedin-icon-transparent-free-png.png', // Substitua pelo caminho da sua imagem
                            width: 45,
                            height: 45,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
