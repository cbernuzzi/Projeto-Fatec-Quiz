import 'package:flutter/material.dart';

class SobrePage extends StatefulWidget {
  SobrePage({Key key, this.title}) : super(key: key);

  final String title;
 
 
  @override
  _SobrePageState createState() => _SobrePageState();
}

  class _SobrePageState extends State<SobrePage> {
  String teste;

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Informações Pertinentes: ", style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,                  
                ),
                 ),
            ),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                 Text("Tema: Quiz ", style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  ),
                 ),
                 ),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                   Text("Objetivo: despertar a curiosidade sobre fatos do mundo e da ciência, ao mesmo tempo que proporciona conhecimentos gerais. ",
                    style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                 ),
                 ),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                 Text("Desenvolvedores:  ", style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,          
                  fontWeight: FontWeight.bold,
                ),
                 ),
                 ),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                 Text("Cleiton Venicius Mendonça Fernandes", style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,    
                  fontStyle: FontStyle.italic,      
                  fontWeight: FontWeight.bold,
                ),
                 ),
                 ),
                   Column(children: <Widget>[
                   Image.asset(('lib/assets/images/Foto de Cleiton.jpg'), width: 100),
                  ],),
                 Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                     Text("Cristiano Carneiro Bernuzzi", style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,    
                  fontStyle: FontStyle.italic,      
                  fontWeight: FontWeight.bold,
                ),
                 ),    
                 ),
                   Column(children: <Widget>[
                   Image.asset(('lib/assets/images/Foto de Cristiano.jpg'), width: 120),
                 ],)
          ],
        )
      ),
    );
  }
}