import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:aplicativo_wmccann_rivelino/telas/home1.dart';
import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {

late AnimationController _controller;
/* late Animation<double> _animation; */

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _controller.forward();
    super.initState();
  }

   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 118, 250),
      appBar: StyleR27.logoWMcCannCenter,
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 48, child: Text('TRABALHOS',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('CLIENTES',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('SOBRE',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('COMPROMISSOS',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('NOTICÍAS',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('ESTUDOS',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('FERRAMENTAS',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('CONTATO',style: StyleR27.textStyleW,)),
            SizedBox(height: 48, child: Text('VAGAS',style: StyleR27.textStyleW,)),
          ],
        ),
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _controller,

        builder: (BuildContext context, Widget? child) { return Transform.rotate(
          angle: _controller.value + 0.55,
          child: FloatingActionButton(
          onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context)=> const Home1()));
          },
          backgroundColor: const Color.fromARGB(255, 57, 118, 250),
          child: const Icon(Icons.close),
        ),
        ); },
        
      ),
    );
  }
}

