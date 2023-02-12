import 'package:aplicativo_wmccann_rivelino/telas/estilos.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/confetti.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_2/jogo_da_velha_fix.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyleR27.logoWMcCannCenter,
      body: Stack(children: [
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Lottie.asset('./assets/lotties/em_construcao.json'),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Para a Search Page')),
                const TextField(),
              ],
            ),
          ),
        ),
        // const Positioned(right: 105, bottom: 20, child: Text("Rivelino's system"))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 130, 161, 238),
        child: const Icon(Icons.search),
      ),
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
/* tela simples ccom youtube player */
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool videoo = true;
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    // const List<String>url = ['https://www.youtube.com/watch?v=dBjoDvWqqAM&t=64s','https://www.youtube.com/watch?v=-km2TKn89Ps&t=1619s'];
    String url = videoo
        ? 'https://www.youtube.com/watch?v=dBjoDvWqqAM&t=64s'
        : 'https://www.youtube.com/watch?v=-km2TKn89Ps&t=1619s';
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: true,
          autoPlay: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        builder: (context, player) => Scaffold(
              appBar: AppBar(
                title: const Text('Notifications'),
              ),
              body: Center(
                child: Column(
                  children: [
                    player,
                    const Text('Notifications'),
                    ElevatedButton(
                        onPressed: () {
                          videoo = !videoo;
                          String url = videoo
                              ? 'https://www.youtube.com/watch?v=dBjoDvWqqAM&t=64s'
                              : 'https://www.youtube.com/watch?v=-km2TKn89Ps&t=1619s';
                          // const List<String> url = ['https://www.youtube.com/watch?v=dBjoDvWqqAM&t=64s','https://www.youtube.com/watch?v=-km2TKn89Ps&t=1619s'];

                          controller.load(YoutubePlayer.convertUrlToId(url)!);
                        },
                        child: const Text('Próx. Video')),
                  ],
                ),
              ),
            ),
        player: YoutubePlayer(controller: controller));
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile'),
            Lottie.asset('assets/lotties/log-in-1.json')
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

/* stateful simples

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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

 */
