import 'package:aplicativo_wmccann_rivelino/telas/home1.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/jogo_da_velha_fix.dart';
import 'package:flutter/material.dart';

import 'estilos.dart';

class Tela2Simples extends StatefulWidget {
  const Tela2Simples({super.key});

  @override
  State<Tela2Simples> createState() => _Tela2SimplesState();
}

class _Tela2SimplesState extends State<Tela2Simples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleR27.logoWMcCannRight,  /* AppBar(
        title: Align(alignment: Alignment.centerRight, child: Image.asset('assets/imagens/WMcCann logo.png', height: 30)),
        ), */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela 2 SIMPLES'),
            const ElevatedButton(onPressed: null, child: Text('Botão')),
            ElevatedButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const Home1()),);},
                          child: const Text('Home1'),),
            ElevatedButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const JogoDaVelha()),);},
                          child: const Text('Home1'),),
          ],
        ),
      ),
    );
  }
}