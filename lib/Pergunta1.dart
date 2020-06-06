import 'package:flutter/material.dart';
import 'Pergunta2.dart';
import 'Benvindo.dart';

class Pergunta1Page extends StatefulWidget {
  Pergunta1Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Pergunta1PageState createState() => _Pergunta1PageState();
}

class _Pergunta1PageState extends State<Pergunta1Page> {
  String teste;
  
  showAlertAcertou(BuildContext context) 
  { 
  
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );
  
    AlertDialog alerta = AlertDialog(
      title: Text("Parabéns! Você Acertou."),
      content: Text(" + 1 Ponto"),
      actions: [
        okButton,
      ],
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  showAlertERROU(BuildContext context) 
  { 
  
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );
  
    AlertDialog alerta = AlertDialog(
      title: Text("Resposta Incorreta!"),
      content: Text("0 Pontos"),
      actions: [
        okButton,
      ],
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pergunta 1"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Normalmente, quantos litros de sangue uma pessoa tem? Em média, quantos litros são retirados numa doação de sangue?", style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Tem 10 litros. São retirados 2 litros.")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertAcertou(context);
                },
                child: Text("Tem entre 4 a 6 litros. São retirados 450 mililitros.")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Tem 7 litros. São retirados 1,5 litros.")
                )
            ),
            Row(children: <Widget>[
              // MainAxisAlignment: MainAxisAlignment.spaceBetween,
              new Container(
                alignment: Alignment.centerLeft,
                margin: new EdgeInsets.only(top: 20.0, left: 10.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.pop(context, MaterialPageRoute(builder: (context) => BenvindoPage())
                       );
                  },
                  child: Text("Voltar"),
                ),
              ),
              new Container(
                alignment: Alignment.centerRight,
                margin: new EdgeInsets.only(top: 20.0, left: 210.0),
                child: RaisedButton(
                  onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta2Page())
                        ,);
                  },
                  child: Text("Próximo"),
                ),
              )
            ],)
            
          ],
        )
      ),
    );
  }

}
