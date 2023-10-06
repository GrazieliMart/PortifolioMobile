import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(this.texto,this.tamTexto, this.cor,{super.key});
final String texto;
final double tamTexto;
final Color cor;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(color:cor),
  child: Text(texto,style: TextStyle(fontSize: tamTexto)),


    );
  }
}