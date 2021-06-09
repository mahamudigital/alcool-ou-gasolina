import 'package:flutter/material.dart';
import 'dart:math';
import 'package:input_calculator/input_calculator.dart';
import 'package:prado_app/MinerPlus2.dart';

class MinerPlus1 extends StatefulWidget {
  @override
  _MinerPlus1State createState() => _MinerPlus1State();
}

class _MinerPlus1State extends State<MinerPlus1> {


  TextEditingController _precoBezerro = TextEditingController();
  TextEditingController _plantel = TextEditingController();
  TextEditingController _suplementoMineral = TextEditingController();
  TextEditingController _minerPlus = TextEditingController();
  TextEditingController _textoResultado = TextEditingController();



  void _calculate() {
    if (_precoBezerro.text.trim().isNotEmpty &&
        _plantel.text.trim().isNotEmpty) {
      final firstValue = double.parse(_precoBezerro.text);
      final secondValue = double.parse(_plantel.text);
      var resultado = (firstValue / secondValue).toString();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MinerPlus2(resultado))
      );


    }
  }




  void _limparCampos() {
    _plantel.text = "";
    _precoBezerro.text = "";
    _suplementoMineral.text = "";
    _minerPlus.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Miner Plus IATF"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Insira os dados:",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  TextField(
                    controller: _precoBezerro,
                    onChanged: (value){
                      _calculate();
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Preço do Bezerro"
                    ),
                    style: TextStyle(
                        fontSize: 18
                    ),

                  ),
                  TextField(
                    controller: _plantel,
                    onChanged: (value){
                      _calculate();
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Plantel"
                    ),
                    style: TextStyle(
                        fontSize: 18
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      "Suplementos",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Suplemento Mineral Reprodução"
                    ),
                    style: TextStyle(
                        fontSize: 18
                    ),
                    controller: _suplementoMineral,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Miner Plus IATF"
                    ),
                    style: TextStyle(
                        fontSize: 18
                    ),
                    controller: _minerPlus,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Calcular",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      onPressed: null,
                    ),
                  ),

                ],

              ),
            ),
          )
      ),
    );
  }


}

