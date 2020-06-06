import 'package:flutter/material.dart';
import 'Sobre.dart';


class TelafinalPage extends StatefulWidget {
  TelafinalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TelafinalPageState createState() => _TelafinalPageState();
}

class _TelafinalPageState extends State<TelafinalPage> {
  String teste;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIM"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Parabéns, você chegou até o final!", style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
            ),
            Row(children: <Widget>[
              // MainAxisAlignment: MainAxisAlignment.spaceBetween,
              new Container(
                alignment: Alignment.centerLeft,
                margin: new EdgeInsets.only(top: 20.0, left: 10.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SobrePage())
                        ,);
                  },
                  child: Text("Sobre"),
                ),
              ),
            ],)
          ],
        )
      ),
    );
  }
}
