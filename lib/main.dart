import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'QUal é sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Perguntas'),
          ),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
