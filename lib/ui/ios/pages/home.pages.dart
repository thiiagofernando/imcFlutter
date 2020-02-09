import 'package:flutter/cupertino.dart';
import 'package:imc/bloc/imc.bloc.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var bloc = new ImacBloc();
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Calculo IMC"),
      ),
      child: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoTextField(
            placeholder: "Altura (CM)",
            controller: bloc.heightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoTextField(
            placeholder: "Peso (Kg)",
            controller: bloc.weighCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            bloc.result, 
            textAlign: TextAlign.center),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CupertinoButton.filled(child: Text("Calcular"), onPressed: () {
            setState(() {
              bloc.calculate();
            });
          }),
        ),
      ]),
    );
  }
}
