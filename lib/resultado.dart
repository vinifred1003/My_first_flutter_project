import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String mensagemFinal;
  const Resultado(this.mensagemFinal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mensagemFinal,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
