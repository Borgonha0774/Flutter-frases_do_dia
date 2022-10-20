import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    'Faça sempre o seu melhor! ...',
    'E acredite que o melhor possa ser feito! ...',
    'Não espere, ponha em prática! ...',
    'Mesmo que pareça difícil, não pare! ...',
    'Só trabalhando é possível trilhar o caminho! ...',
    'Aprenda a lidar com as situações do melhor jeito!',
    'Não espere, ponha em prática!',
    'Não espere que as respostas caiam do céu!',
    'Veja sempre o que há de positivo nas coisas!',
    'Não seja vítima das dificuldades, tente ultrapassá-las!'
  ];
  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    _fraseGerada = _frases[numeroSorteado];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //width: double.infinity,
          /* decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ), */
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('images/logo.png'),
              ),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    _gerarFrase();
                  });
                },
                child: const Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
