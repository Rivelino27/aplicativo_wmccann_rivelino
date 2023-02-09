import 'package:flutter/material.dart';
class StyleR27 {
  // static var controller = TextEditingController();
/* static var controller2 = TextEditingController();
static void limpar() {
  controller2.clear;
} */
  static AppBar logoWMcCannCenter = AppBar(
    title: Align(alignment: Alignment.center, child: Image.asset('assets/imagens/WMcCann logo.png', height: 30),)
  );
  static AppBar logoWMcCannRight = AppBar(
    title: Align(alignment: Alignment.centerRight, child: Image.asset('assets/imagens/WMcCann logo.png', height: 30),),
    flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, 
            end: Alignment.topRight,
            colors: <Color>[
              Color.fromARGB(255, 123, 194, 252),
                  Color.fromARGB(255, 57, 118, 250),
            ],
          )
        ),
      ),
  );
  static const TextStyle textStyle = TextStyle(
    color: Color.fromARGB(255, 247, 240, 201),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyleW = TextStyle(
    color: Color.fromARGB(255, 247, 240, 201),
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const InputDecoration input1 = InputDecoration( /* Usasar em decoration: StyleR27.input1 */
    filled: true,
    fillColor: Color.fromARGB(40, 59, 13, 115),
    hintText: 'Username',
    hintStyle: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 225, 255, 253)),
    labelStyle: TextStyle(color: Colors.black),
    contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        /* borderRadius: BorderRadius.circular(25), */
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        /* borderRadius: BorderRadius.circular(25.7), */
      ),
  );
 
  // ignore: non_constant_identifier_names
  static AppBar Abar1 = AppBar(
        /* backgroundColor: const Color.fromARGB(255, 31, 122, 140), */
       /*  elevation: 0.0, */
        titleSpacing: 10.0,
        centerTitle: true,
       /*  leading: InkWell(
          onTap: () {
           Builder(BuildContext context){Navigator.pop(context); };
          },
          child:const Icon(
            Icons.arrow_back_rounded,
            color: Color.fromARGB(245, 195, 241, 250),
            size: 30,
          ),
        ), */
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, 
            end: Alignment.topRight,
            colors: <Color>[
              Color.fromARGB(255, 115, 32, 160),
                  Colors.blue
            ],
          )
        ),
      ),
  );
}