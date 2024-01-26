import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita',
      'respostas': [
        {
          'texto': 'Preto',
          'nota': 5,
        },
        {
          'texto': 'Verde',
          'nota': 4,
        },
        {
          'texto': 'Vermelho',
          'nota': 7,
        },
        {
          'texto': 'Roxo',
          'nota': 10,
        },
      ],
    },
    {
      'texto': 'Qual seu animal preferido?',
      'respostas': [
        {
          'texto': 'Cachorro',
          'nota': 8,
        },
        {
          'texto': 'Gato',
          'nota': 9,
        },
        {
          'texto': 'Capivara',
          'nota': 4,
        },
        {
          'texto': 'Cavalo',
          'nota': 2,
        },
      ],
    },
    {
      'texto': 'Qual seu Instrutor preferido?',
      'respostas': [
        {
          'texto': 'Maria',
          'nota': 6,
        },
        {
          'texto': 'Joao',
          'nota': 10,
        },
        {
          'texto': 'Leo',
          'nota': 3,
        },
        {
          'texto': 'Pedro',
          'nota': 4,
        },
      ],
    },
  ];
  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }
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
