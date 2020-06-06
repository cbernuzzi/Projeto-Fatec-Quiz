import 'package:flutter/material.dart';
import 'Avatar.dart';

class BenvindoPage extends StatefulWidget {
  BenvindoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BenvindoPageState createState() => _BenvindoPageState();
}

class _BenvindoPageState extends State<BenvindoPage> {
  String teste;

  _navigatePergunta(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AvatarPage()),
    );
  }

  
  showAlert(BuildContext context) 
  { 
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );
  
    AlertDialog alerta = AlertDialog(
      title: Text("Alerta de Alteração de Dificuldade"),
      content: Text("Foi alterado a dificuldade dos testes"),
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
        title: Text("Benvindo: "+this.widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Selecione as Dificuldades abaixo")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlert(context);
                },
                child: ListTile(
                  leading: Icon(Icons.person_outline, size: 60, color: Colors.blue[900], ),
                  title: Text("Fácil", style: TextStyle(fontSize: 22),),
                  //Image.asset('lib/assets/images/easy.jpg'),
		           ),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlert(context);
                },
                child: ListTile(
                  leading: Icon(Icons.person_outline, size: 60, color: Colors.blue[900], ),
                  title: Text("Desafio", style: TextStyle(fontSize: 22),),
                ),
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
                margin: new EdgeInsets.only(top: 20.0, right: 10.0),
                child: RaisedButton(
                  onPressed: (){
                       _navigatePergunta(context);
                  },
                  child: Text("Avatar"),
                ),
              )
            ],)
            
          ],
        )
      ),
    );
  }

}