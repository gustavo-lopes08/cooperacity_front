import 'package:flutter/material.dart';

class Problema extends StatefulWidget {
  @override
  _ProblemaState createState() => _ProblemaState();
}

class _ProblemaState extends State<Problema> {
  List<String> itensMenu = ["Configurações", "Deslogar"];
  _escolhaMenuItem(String escolha) {
    switch (escolha) {
      case "Deslogar":
        break;
      case "Configurações":
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Painel"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: _escolhaMenuItem,
            itemBuilder: (context) {
              return itensMenu.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("imagens/fundo.png"), fit: BoxFit.cover)),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 22),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      "Encontrou um problema?",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Manda pra gente!",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(
                    child: GestureDetector(
                      child: Image(
                        image: AssetImage("imagens/camera.png"),
                        width: 100,
                        height: 100,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/cameraapp");
                      },
                    ),
                  ),
                ),
                /*_carregando
                    ? Center(child: CircularProgressIndicator(backgroundColor: Colors.white,),)
                    : Container(),*/
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      /*_mensagemErro*/ "",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
