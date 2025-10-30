import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../componentes/visor.dart';
import '../componentes/teclado.dart';
import '../modelos/memoria.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = Memoria();

  void _pressionado(String comando) {
    if (kDebugMode) {
      print('Tecla pressionada: $comando');
    }

    setState(() {
      memoria.tratarDigito(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Fixar orientação em portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF008080), // Teal clássico do Windows
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF008080),
          secondary: Color(0xFF000080),
        ),
        fontFamily: 'MS Sans Serif', // Tentar usar fonte similar
        useMaterial3: false, // Desabilitar Material 3 para look clássico
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFC0C0C0), // Cinza Windows
        body: Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: const Color(0xFFC0C0C0),
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 2,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              // Barra de título estilo Windows
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: const Color(0xFF000080), // Azul Windows
                child: Row(
                  children: [
                    Text(
                      'Calculadora',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Visor(memoria.valorNoVisor),
              const SizedBox(height: 8),
              Teclado(_pressionado),
            ],
          ),
        ),
      ),
    );
  }
}