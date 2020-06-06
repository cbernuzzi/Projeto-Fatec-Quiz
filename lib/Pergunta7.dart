import 'package:flutter/material.dart';
import 'Pergunta8.dart';

class Pergunta7Page extends StatefulWidget {
  Pergunta7Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Pergunta7PageState createState() => _Pergunta7PageState();
}

class _Pergunta7PageState extends State<Pergunta7Page> {
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
        title: Text("Pergunta 7"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Qual é o gás mais abundante da atmosfera terrestre?", style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertAcertou(context);
                },
                child: Text("Gás Nitrogênio.")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Gás Oxigênio.")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Gás Argônio.")
                )
            ),
            Row(children: <Widget>[
              // MainAxisAlignment: MainAxisAlignment.spaceBetween,
              new Container(
                alignment: Alignment.centerLeft,
                margin: new EdgeInsets.only(top: 20.0, left: 10.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.pop(context);
                  },
                  child: Text("Voltar"),
                ),
              ),
              new Container(
                alignment: Alignment.centerRight,
                margin: new EdgeInsets.only(top: 20.0, left: 210.0),
                child: RaisedButton(
                  onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta8Page())
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
