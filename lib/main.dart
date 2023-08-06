import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: const Center(
          child: Text("Dadoos"),
        ),
      ),
      body: const Dadoos(),
    ),
  ));
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  var numeroDadoEsquerdo = 1;
  var numeroDadoDireito = 1;

  void alterarFaces(){
    setState(() {
                  numeroDadoEsquerdo = Random().nextInt(5)+1;
                  numeroDadoDireito = Random().nextInt(5) + 1;

                  print("Esquerdo: $numeroDadoEsquerdo");
                  print("Direito: $numeroDadoDireito");
                });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(children: [
          Expanded(
            child: TextButton(
              onPressed: () {

                alterarFaces();
                
                
              },
              child: Image.asset('images/dado$numeroDadoEsquerdo.png'),
            ),
          ),


          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFaces();
              },
              child: Image.asset('images/dado$numeroDadoDireito.png'),
            ),
          ),
        ]),
      ),
    );
  }
}
