import 'package:flutter/material.dart';
import 'Benvindo.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: 'Usuário'
                    ),
                    controller: nomeControler,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.question_answer),
                        border: InputBorder.none,
                        hintText: 'Senha'
                    ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     _navigateMenu(context);
                },
                child: Text("login")
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