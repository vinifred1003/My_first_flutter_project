import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita',
        'respostas': ['Preto', 'Verde', 'Vermelho', 'Roxo'],
      },
      {
        'texto': 'Qual seu animal preferido?',
        'respostas': ['Cachorro', 'Gato', 'Capivara', 'Cavalo'],
      },
      {
        'texto': 'Qual seu Instrutor preferido?',
        'respostas': ['Maria', 'Joao', 'Leo', 'Pedro'],
      },
    ];
    List<Widget> respostas = [];
    for (String textoResp
        in perguntas[perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, responder));
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...respostas
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
