import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final Uri _url = Uri.parse('https://youtu.be/l8aNMhRwSR8');

class CHEVROLET extends StatefulWidget {
  const CHEVROLET({super.key});

  @override
  State<CHEVROLET> createState() => _CHEVROLETState();
}

class _CHEVROLETState extends State<CHEVROLET> {

  /* PLAYER youtube */
  late YoutubePlayerController controllerY;

  bool isPlayng = false;

  @override

  void initState() {
    super.initState();

    const url = 'https://youtu.be/l8aNMhRwSR8';
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
                              Image.asset('assets/imagens/3h.jpg'),
                              Center(child: Column(
                                children: const [
                                  Text('CHEVROLET', style: StyleR27.textStyleW,),
                                  Text('NATAL CHEVROLET',textAlign: TextAlign.center),
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
                              Text('Chevrolet ??? 21 de dezembro de 2022', style: TextStyle(
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
                              Text('CHEVROLET E MARCOS MION DESEJAM BOAS FESTAS EM NOVA CAMPANHA', style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 52, 55, 248)
                              ),)
                            ],
                          ),
                        ),
                        Lottie.asset('assets/lotties/89588-tourists-by-car (2).json'),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: const [
                              Text('Quantos caminhos diferentes voc?? fez neste ??ltimo ano? Pergunta o apresentador Marcos Mion no come??o do novo filme da Chevrolet. O novo embaixador e CMO (Chief Mionzera Officer) da marca, anunciado em novembro, ?? tamb??m a voz que narra a campanha de final de ano, com o objetivo de desejar boas festas ao p??blico da marca.', style: TextStyle(
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
                              Text('Criada pela Commonwealth//WMcCann, divis??o da WMcCann para atendimento exclusivo ?? Chevrolet, a pe??a relembra, de maneira emocional, o quanto as pessoas viveram, quantos sorrisos encontraram, quantas m??sicas e quantas paisagens admiraram ao longo do ano que se passou. O filme aproveita para desejar que 2023 seja um ano com novos caminhos a serem percorridos, aproximando as pessoas do que realmente importa ??? mote de uma das principais campanhas realizadas durante 2022. Lan??ado nesta quarta-feira (21), a estrat??gia de m??dia conta com veicula????o nacional em TV aberta, nos perfis da marca nas redes sociais da marca e m??dia em cinemas de todo o pa??s.', style: TextStyle(
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
                              Text('A campanha antecede um per??odo importante para a marca. 2023 ser?? o ano das picapes Chevrolet: al??m da Nova Montana, haver?? tamb??m uma nova vers??o da S10 e a chegada da Silverado no mercado brasileiro. O portf??lio de carros 100% el??tricos da marca tamb??m ser?? ampliado, refor??ando o compromisso da GM com a sustentabilidade e um futuro de zero acidente, zero emiss??o e zero congestionamento.', style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(188, 2, 2, 32)
                              ),),
                            ],
                          ),
                        ),
                        Lottie.asset('assets/lotties/car-suv-blue-in-the-city-89798.json'),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              GestureDetector(
                                onTap: _launchUrl,
                                child: const Text('Assista aqui: https://youtu.be/l8aNMhRwSR8', style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromARGB(188, 2, 2, 32)
                                ),),
                              ),
                            ],
                          ),
                        ),
                        
                  
                  ],
                ),
              ),
            ),
          ),
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