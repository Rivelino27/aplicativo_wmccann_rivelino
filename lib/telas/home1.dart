
import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:aplicativo_wmccann_rivelino/telas/tela2_simples.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/grupo_petropolis.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/menu.dart';
import 'package:flutter/material.dart';
int n1 = 0;
class Home1 extends StatelessWidget {
  const Home1({super.key});
  somar(){
    print(n1++);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        StyleR27.logoWMcCannCenter,
        /* cobrir com center child: para centralizar o conteudo */
      body: SingleChildScrollView(
          child: Center(
            child: Column(
              
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/imagens/1h.jpg'),
                      Center(child: Column(
                        children: const [
                          Text('', style: StyleR27.textStyleW,),
                          Text(''),
                        ],
                      ))
                    ],
                  ),
                ),
                
                GestureDetector(
                  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Petropolis()),);  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/imagens/2h.jpg'),
                      Center(child: Column(
                        children: const [
                          Text('GRUPO PETRÓPOLIS', style: StyleR27.textStyleW,),
                          Text('ITA-CARNAVAL',textAlign: TextAlign.center),
                        ],
                      ))
                    ],
                  ),
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/3h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('CHEVROLET', style: StyleR27.textStyleW,),
                        Text('NATAL CHEVROLET',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/4h.png'),
                    Center(child: Column(
                      children: const [
                        Text('AMERICANAS', style: StyleR27.textStyleW,),
                        Text('NATAL AMERICANAS',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/5h.png'),
                    Center(child: Column(
                      children: const [
                        Text('SBT', style: StyleR27.textStyleW,),
                        Text('FIM DE ANO SBT',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/6h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('BANCO DO BRASIL', style: StyleR27.textStyleW,),
                        Text('NATAL MAIS QUE MILIONÁRIO',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/7h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('SEARA', style: StyleR27.textStyleW,),
                        Text('5 SEGUNDOS DE MUITO SABOR',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/8h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('L\'ORÉAL', style: StyleR27.textStyleW,),
                        Text('ELSEVE CACHOS LONGOS DOS SONHOS', textAlign: TextAlign.center,),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/9h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('MASTERCARD', style: StyleR27.textStyleW,),
                        Text('TODO MUNDO!',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/10h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('SCHÄR BRASIL', style: StyleR27.textStyleW,),
                        Text('PÃO FRANCÊS SEM GLÚTEN',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/imagens/11h.jpg'),
                    Center(child: Column(
                      children: const [
                        Text('LATAM AIRLINES', style: StyleR27.textStyleW,),
                        Text('DESAFIO AIR GUITAR',textAlign: TextAlign.center),
                      ],
                    ))
                  ],
                ),
                    Container(
                      color: Color.fromARGB(255, 9, 86, 253),
                      child: SizedBox(
                        
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            
                            ElevatedButton(
                                          onPressed: () {
                                            // Navigator.pop(context);
                                            Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Tela2Simples()),
                                            );
                                          },
                                          child: const Text('Tela2'),
                                        ),
                                        const Text('Powered by Rivelino, \n just a test BETA aplication', textAlign: TextAlign.center,),
                                        Stack(children: [Image.asset('assets/imagens/cpa.png')])
                          ]),
                        ),
                      ),
                    ),
                
                
              ],
            ),
            
          ),
          
        ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Menu()));
        },
        backgroundColor: const Color.fromARGB(255, 57, 118, 250),
        child: const Icon(Icons.menu),
      ),
    );
  }
}

            