import 'package:flutter/material.dart';

Future buscarDados(){
return Future.delayed(const Duration(seconds: 5), () => print('função marcada com await agora foi executada. agora os códigos adiante vão ser executados... '));
}
void assinc() async {
  print('essse comando foi, agora espere 5 segundos enquanto a função com await for executada para prosseguir a execução dos códigos');
  await buscarDados();
  print(2222);
  print(333333);
}
class AAF extends StatefulWidget {
  const AAF({super.key});

  @override
  State<AAF> createState() => AAFState();
}

class AAFState extends State<AAF> {
  bool boleano = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Async, Await e Future'),
            const ElevatedButton(onPressed: assinc, child: Text('Async')),
            Visibility(visible: boleano, maintainSize: true, maintainAnimation: true, maintainState: true,
            child: const Text('Visibily widget'),),
            ElevatedButton(onPressed: (){
              setState(() {
                
              boleano = !boleano;
              });
            }, child: const Text('Mostrar Widget')),
            
            if (boleano)/* ou if (boleano) ou boleano? Text(): ElevatedButton(), */
            Text(boleano? 'Yessssss': 'yes2') else Container(), 
          ],
        ),
      ),
    );
  }
}