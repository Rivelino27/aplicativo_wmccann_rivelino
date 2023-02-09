import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/confetti.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/jogo_da_velha_fix.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleR27.logoWMcCannCenter,
      body: Stack(
        children: [ Center(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Lottie.asset('./assets/lotties/em_construcao.json'),
                  ElevatedButton(onPressed: (){}, child: const Text('Para a Search Page')),
                  const TextField(),
                ],
              ),
          ),
        ),
            // const Positioned(right: 105, bottom: 20, child: Text("Rivelino's system"))
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: const Color.fromARGB(255, 130, 161, 238),
        child: const Icon(Icons.search),),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search page'),
        backgroundColor: const Color.fromARGB(255, 80, 12, 157),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Pagina de Chat'),
            ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const JogoDaVelha()),
                    );
                  },
                  child: const Text('Jogo da velha'),
                ),
            ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Confetti()),
                    );
                  },
                  child: const Text('confetti page'),
                ),
          ],
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('Notifications'),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile'),
            Lottie.asset('./assets/profile.json')
          ],
        ),
      ),
    );
  }
}

class ExemploStateless extends StatelessWidget {
  const ExemploStateless({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('exemplo state less'),
            ElevatedButton(onPressed: null, child: Text('botão')),
          ],
        ),
      ),
    );
  }
}