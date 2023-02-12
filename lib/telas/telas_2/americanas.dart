import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:flutter/material.dart';

class AMERICANAS extends StatefulWidget {
  const AMERICANAS({super.key});

  @override
  State<AMERICANAS> createState() => _AMERICANASState();
}

class _AMERICANASState extends State<AMERICANAS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleR27.logoWMcCannRight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AMERICANAS'),
            ElevatedButton(onPressed: (){}, child: Text('Button...')),
          ],
        ),
      ),
    );
  }
}