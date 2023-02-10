import 'package:aplicativo_wmccann_rivelino/telas/home1.dart';
import 'package:aplicativo_wmccann_rivelino/telas/telas_simples_conjuntas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(), 
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 57, 118, 250),
          foregroundColor: Color.fromARGB(255, 230, 240, 255),
          toolbarHeight: 40,

        ),
        
        scaffoldBackgroundColor: const Color.fromARGB(255, 9, 59, 107),
        /* configuração padrão de texto do app */
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 145, 253, 255),
            fontSize: 20,
          ),
        ),
      ),
      home: const MyHomePage(title: 'WMcCann'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color mainColor = const Color.fromARGB(255, 255, 255, 255);
  Color mainColor2 = const Color.fromARGB(255, 134, 201, 248);
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        backgroundColor: const Color.fromARGB(255, 21, 92, 158),
        context,
        controller: _controller,
        screens: const [
          Home1(),
          SearchPage(),
          ChatPage(),
          NotificationPage(),
          ProfilePage(),
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style1,
        // navBarStyle: NavBarStyle.style9,
        // navBarStyle: NavBarStyle.style7,
        // navBarStyle: NavBarStyle.style10,
        // navBarStyle: NavBarStyle.style12,
        // navBarStyle: NavBarStyle.style13,
        // navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: ("Buscar"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chat_bubble),
        title: ("Chat"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell),
        title: ("Notification"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
    ];
  }
}
