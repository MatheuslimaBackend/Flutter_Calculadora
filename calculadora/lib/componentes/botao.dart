import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  static const corPadrao = Color(0xFFC0C0C0); // Cinza Windows
  static const corOperacao = Color(0xFFC0C0C0); // Mesma cor, borda diferente

  final String texto;
  final bool duplo;
  final Color cor;
  final void Function(String) callback;
  final bool isOperacao;

  const Botao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corPadrao,
    required this.callback,
    this.isOperacao = false,
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corOperacao,
    required this.callback,
  }) : isOperacao = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: duplo ? 2 : 1,
      child: Container(
        margin: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            foregroundColor: Colors.black,
            elevation: 2,
            shadowColor: Colors.black,
            surfaceTintColor: Colors.transparent,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(
                color: Colors.white,
                width: 2.0,
              ),
            ),
            padding: const EdgeInsets.all(16.0),
          ),
          onPressed: () => callback(texto),
          child: Text(
            texto,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: isOperacao ? FontWeight.bold : FontWeight.normal,
              fontFamily: 'Arial', // Fonte similar ao Windows
            ),
          ),
        ),
      ),
    );
  }
}