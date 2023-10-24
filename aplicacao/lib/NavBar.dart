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
            accountName: Text('Welcome to my portfolio!'), 
            accountEmail: Text('grazielimartins5@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child:  Image.network(
                'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
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
   SizedBox(height:10),
 Row(children:[
   
     SizedBox(width:12),
    Icon( Icons.dark_mode),
     SizedBox(width:5),
  Text("Dark Mode"),],),

 SizedBox(height:10),
  Row(children:[
      SizedBox(width:12),
    Icon( Icons.notifications,),
     SizedBox(width:5),
  Text("Notifications"),],),
  
   SizedBox(height:10),
    Row(children:[
       SizedBox(width:12),
    Icon( Icons.book,),
    SizedBox(width:5),
  Text("Books"), 
  SizedBox(height:20),
  ],
  
  ),
  Divider(
            thickness: 2,
          ),
],),
       
         
         SizedBox(height: 370),
       
        
        ],

      ),
      


    );
  }
}