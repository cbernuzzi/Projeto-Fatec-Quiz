import 'package:flutter/material.dart';
import 'Pergunta1.dart';


class AvatarPage extends StatefulWidget {
  AvatarPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AvatarPageState createState() => _AvatarPageState();
}


class _AvatarPageState extends State<AvatarPage> {
  String teste;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
      ),
      body: ListView1(),
    );
  }
}

class Item {
  String usuario;
  String avatar;

  Item(this.usuario, this.avatar);
}

class ListView1 extends StatefulWidget {
  @override
  _ListView1State createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
  //Lista Dinâmica de Itens contendo: usuário, avatar
  List<Item> lista = [];

  //Controladores dos TextField
  TextEditingController txtUsuario = new TextEditingController();
  TextEditingController txtAvatar = new TextEditingController();


  //Aparência dos itens do ListView
  Widget _itemLista(context, index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.14,
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Card(
        color: Colors.yellow[700],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
           
            Text(
              lista[index].usuario,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              lista[index].avatar,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.grey[100],
      //height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    controller: txtUsuario,
                    decoration: InputDecoration(
                        labelText: "Usuário",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.1))),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                    controller: txtAvatar,
                    decoration: InputDecoration(
                        labelText: "Homem ou Mulher",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.1))),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                     setState(() {
                       lista.add(Item(
                         txtUsuario.text,
                         txtAvatar.text
                        )
                       );
                     }); 
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: lista.length, // total de itens da lista
              itemBuilder:
                  _itemLista, // especificar a aparência dos itens da lista
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta1Page())
                        ,);
                  },
                child: Text("Iniciar")
                )
            )
        ]
      ),
    );
  }
}