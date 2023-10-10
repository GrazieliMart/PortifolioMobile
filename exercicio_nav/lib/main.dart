import 'package:exercicio_nav/bemvindo.dart';
import 'package:exercicio_nav/cont.dart';
import 'package:exercicio_nav/sobre.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      routes: {
        '/': (context) => Home(),
        '/bemvindo': (context) => Bemvindo(),
        '/cont': (context) => Cont(),
        '/sobre': (context) => Sobre(),
      },
    );
  }
}
