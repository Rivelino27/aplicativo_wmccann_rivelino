import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Image.asset('assets/imagens/WMcCann logo.png', height: 30)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Home'),
            ElevatedButton(onPressed: null, child: Text('Botão')),
          ],
        ),
      ),
    );
  }
}

// statefull widget
/* class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => Home1State();
}

class Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Image.asset('assets/imagens/WMcCann logo.png', height: 30)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Home'),
            ElevatedButton(onPressed: null, child: Text('Botão')),
          ],
        ),
      ),
    );
  }
} */