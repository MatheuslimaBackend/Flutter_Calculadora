import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Visor extends StatelessWidget {
  final String texto;
  const Visor(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFC0C0C0),
        border: Border.all(
          color: Colors.grey[400]!,
          width: 2.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 1,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        color: const Color(0xFF0A4700), // Verde LCD vintage
        child: Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText(
            texto,
            minFontSize: 20,
            maxFontSize: 48,
            maxLines: 1,
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontFamily: 'Digital',
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              fontSize: 48,
              color: Color(0xFF7FFF00), // Verde neon vintage
            ),
          ),
        ),
      ),
    );
  }
}