import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Confetti extends StatefulWidget {
  const Confetti({super.key});

  @override
  State<Confetti> createState() => _ConfettiState();
}

class _ConfettiState extends State<Confetti> {
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
  // comecar();
    return Stack(
      alignment: Alignment.topCenter,
      children: 
        [Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Confetti Screen'),
                ElevatedButton(onPressed: (){
                  
                  if (isPlayng) {
                    controller.stop();
                  }
                  else {
                    controller.play();
                  }
              
                }, child: Text(isPlayng? 'Parar':"Celebrar")),
              ],
            ),
          ),
        ),
        ConfettiWidget(confettiController: controller,
        blastDirection: 1.7, //pi/2
        shouldLoop: true,
        gravity: 0.05,
        numberOfParticles: 4,
        )
      ],
    );
  }
}