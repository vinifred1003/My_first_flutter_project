import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita',
      'respostas': [
        {
          'texto': 'Preto',
          'pontuacao': 5,
        },
        {
          'texto': 'Verde',
          'pontuacao': 4,
        },
        {
          'texto': 'Vermelho',
          'pontuacao': 7,
        },
        {
          'texto': 'Roxo',
          'pontuacao': 10,
        },
      ],
    },
    {
      'texto': 'Qual seu animal preferido?',
      'respostas': [
        {
          'texto': 'Cachorro',
          'pontuacao': 8,
        },
        {
          'texto': 'Gato',
          'pontuacao': 9,
        },
        {
          'texto': 'Capivara',
          'pontuacao': 4,
        },
        {
          'texto': 'Cavalo',
          'pontuacao': 2,
        },
      ],
    },
    {
      'texto': 'Qual seu Instrutor preferido?',
      'respostas': [
        {
          'texto': 'Maria',
          'pontuacao': 6,
        },
        {
          'texto': 'Joao',
          'pontuacao': 10,
        },
        {
          'texto': 'Leo',
          'pontuacao': 3,
        },
        {
          'texto': 'Pedro',
          'pontuacao': 4,
        },
      ],
    },
  ];
  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
    print(pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder,
              )
            : const Resultado("Parabéns!!!"),
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
