import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [  
        
          UserAccountsDrawerHeader(
            accountName: Text('Bem-vindo(a), Tania'), 
            accountEmail: Text('bassoTania@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.network("https://cdn1.vectorstock.com/i/thumb-large/38/10/solid-purple-gradient-user-icon-web-icon-vector-23623810.jpg",
              width: 90,
              height: 90,
              fit: BoxFit.cover,)
              ,)
            ),
           decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1557682250-33bd709cbe85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHVycGxlJTIwZ3JhZGllbnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80"
              ),
              fit: BoxFit.cover,
            ), 
           ), 
          ),
         /* Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              ElevatedButton(onPressed: () {  },
              child: Text("Login"),
               style: 
               
               ButtonStyle(
               
         shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
         )
          
          
         ),
              ),
            SizedBox(width: 50,),
              ElevatedButton(onPressed: (){

              }, child: Text("Cadastre-se"),
              style: ButtonStyle(
          shape: 
          
          MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              
            )
          ),
          
         ),)
        
            ],
          ),
          */
Column(children: [
  
  Row(children:[
      SizedBox(width:12),
    Icon( Icons.abc),
     SizedBox(width:2),
  Text("Home"),],),
  
  Row(children:[
     SizedBox(width:12),
    Icon( Icons.abc),
     SizedBox(width:2),
  Text("Contador"),],),


    Row(children:[
       SizedBox(width:12),
    Icon( Icons.abc),
    SizedBox(width:2),
  Text("Sobre"),
  ],
  
  ),
  Divider(
            thickness: 2,
          ),
],),
       
         
         SizedBox(height: 400),
          
          Divider(
            thickness: 2,
          ),
          Row(children:[ 
          SizedBox(width: 100,),
         ElevatedButton(onPressed: (){
           Navigator.pushNamed(context, '/cadastro');
         }, child: Text("Dev Tools"),
         
         style: 
         
         
      ButtonStyle(
       
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )
          ),
          
         ),
        ),
       ],
),

        ],

      ),
      


    );
  }
}