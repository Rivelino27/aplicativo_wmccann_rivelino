import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final Uri _url = Uri.parse('https://youtu.be/gNQQk71fn9w');

class Petropolis extends StatefulWidget {
  const Petropolis({super.key});

  @override
  State<Petropolis> createState() => _PetropolisState();
}

class _PetropolisState extends State<Petropolis> {

  /* PLAYER youtube */
  late YoutubePlayerController controllerY;

  bool isPlayng = false;
  final controller = ConfettiController(
    duration: const Duration(seconds: 10)
  );

  @override

  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        isPlayng = controller.state == ConfettiControllerState.playing;
      });
    });
    
    controller.play();

    const url = 'https://youtu.be/gNQQk71fn9w';
    controllerY = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: true,
          autoPlay: true,
        ));

  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  comecar(){
    setState(() {
      if (isPlayng=true) {
    controller.play();
    }
    else {
      controller.stop();
    }
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      builder: (context, player) => Stack(
        alignment: Alignment.topCenter,
        children: 
          [Scaffold(
            backgroundColor: Colors.white,
            appBar: StyleR27.logoWMcCannRight,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    GestureDetector(
                          onTap: (){ },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/imagens/2h.jpg'),
                              Center(child: Column(
                                children: const [
                                  Text('GRUPO PETR??POLIS', style: StyleR27.textStyleW,),
                                  Text('ITA-CARNAVAL',textAlign: TextAlign.center),
                                ],
                              ))
                            ],
                          ),
                        ),
                        player,
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 20,
                          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('Grupo Petr??polis ??? 6 de fevereiro de 2023', style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 52, 55, 248)
                              ),)
                            ],
                          ),
                        ),
                        
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 160,
                          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('ITAIPAVA LAN??A LATA ESPECIAL PARA O CARNAVAL 2023', style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 52, 55, 248)
                              ),)
                            ],
                          ),
                        ),
            
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('Para um dos eventos mais aguardados do ano, a Itaipava prepara uma surpresa para os foli??es: lata em tr??s vers??es especiais colecion??veis para o carnaval. A novidade est?? dispon??vel em todo o territ??rio nacional, na Itaipava 100% Malte, e traz ilustra????es de um foli??o, uma foli?? e um ambulante.', style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(188, 2, 2, 32)
                              ),)
                            ],
                          ),
                        ),
                      
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('A edi????o tem??tica chega com a proposta de homenagear as pessoas que fazem o carnaval acontecer. Entre os diferenciais da lata, criada pela WMcCann, est??o os desenhos que mudam de cor e brilham quando geladas, refor??ando ainda mais o compromisso da marca em trazer experi??ncias diferenciadas, al??m de estar presente nos momentos de divers??o junto a seus consumidores por meio de ativa????es, festas e eventos pelo pa??s.', style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(188, 2, 2, 32)
                              ),),
                            ],
                          ),
                        ),
      
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('???Depois de dois anos sem poder celebrar o carnaval nas ruas, queremos comemorar esse retorno da melhor forma poss??vel, oferecendo latas especiais que aproximam cada vez mais a ess??ncia da marca com os nossos consumidores???, afirma Danielle Bibas, vice-presidente de marketing do Grupo Petr??polis.', style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(188, 2, 2, 32)
                              ),),
                            ],
                          ),
                        ),
      
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('Filme Ita-Combinado ??? Al??m das latas comemorativas, a Itaipava lan??a o filme ???ITA-Combinado???, a partir do dia 09, durante o intervalo da novela Travessia, transmitida pela TV Globo. Com muito humor e leveza, os foli??es aparecerem se divertindo, enquanto um bloco passa pela rua e se depara com fantasias similares e que est??o combinando. Criada pela WMcCann, a a????o marca a presen??a da Itaipava em diversas ocasi??es e festas brasileiras, principalmente os blocos de carnaval, fortalecendo a experi??ncia e identifica????o com o consumidor. O v??deo tamb??m refor??a o posicionamento da marca com a L??ngua do ITA, uma das estrat??gias da companhia para o consumidor.', style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(188, 2, 2, 32)
                              ),),
                            ],
                          ),
                        ),
      
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              GestureDetector(
                                onTap: _launchUrl,
                                child: const Text('Assista aqui: https://youtu.be/gNQQk71fn9w', style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(188, 2, 2, 32)
                                ),),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(onPressed: (){
                    if (isPlayng) {
                      controller.stop();
                    }
                    else {
                      controller.play();
                    }
                  }, child: Text(isPlayng? 'Parar ????':"Celebrar ???????")),
                  
                  ],
                ),
              ),
            ),
          ),
          ConfettiWidget(confettiController: controller,
          blastDirection: 1.7, //pi/2
          shouldLoop: true,
          gravity: 0.05,
          numberOfParticles: 4,
          colors: const [
            Colors.white,
            Colors.green,
            Colors.yellow,
            Colors.blue,
            Color.fromARGB(255, 69, 240, 252)
          ],
          )
        ],
      ), player: YoutubePlayer(controller: controllerY),
    );
  }
}


Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}