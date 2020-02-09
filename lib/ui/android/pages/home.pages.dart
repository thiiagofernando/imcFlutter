import 'package:flutter/material.dart';
import 'package:imc/bloc/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImacBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculo IMC"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Altura (CM)",
            ),controller: bloc.heightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Peso (KG)",
              
            ),controller: bloc.weighCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            bloc.result,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ]),
    );
  }
}
