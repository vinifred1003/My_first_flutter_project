import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() quandoSelecionado;

  const Resposta(this.text, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: quandoSelecionado,
        child: Text(text),
      ),
    );
  }
}
