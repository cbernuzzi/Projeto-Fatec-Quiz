import 'package:flutter/material.dart';
import 'Benvindo.dart';

class CadastroPage extends StatefulWidget {
  CadastroPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  _navigateMenu(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BenvindoPage(title: nomeControler.text)),
    );
  }
  final nomeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Digite seu Usuário'
                    ),
                    controller: nomeControler,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Digite seu NickName:'
                    ),
                    controller: nomeControler,
              )
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Telefone: '
                    ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Digite a senha escolhida'
                    ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     _navigateMenu(context);
                },
                child: Text("Cadastrar")
                )
            )
          ]
        )
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
