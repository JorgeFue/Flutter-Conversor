import 'package:conversor/dashboard.dart';
import 'package:conversor/temperatura.dart';
import 'package:conversor/volumen.dart';
import 'package:conversor/longitud.dart';//con esto se define las rutas 
import 'package:conversor/masa.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



void main() => runApp(
  
  MaterialApp(

    routes:{//es como instanciar los stage para mandar a cada una de las pantallas
      '/masa' : (context) => Masa(),//alias para enrutarme a un archivo en especifico
      '/vol' : (context) => Volumen(),
      '/temp' : (context) => Temperatura(),
      '/long' : (context) => Longitud(),
    } ,


    home: Conversor(),
  )
);

class Conversor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    //Retornamos la instancia de otra clase que contine los widgets
    return ConversorState();
  }

}

class ConversorState extends State<Conversor>{

  @override
  Widget build(BuildContext context) {
    // Retornamos la construccion completa de widgets
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Dashboard(), //a donde me mandara 


      title: Text("Bienvenidos...", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                      )),
      
      image: Image.network("https://files.cults3d.com/uploaders/13889723/illustration-file/87eb6523-72a1-483a-b67a-202075816baa/one-piece-calavera-pegatina_large.png",
                              ), photoSize: 100.0,
      
      gradientBackground: LinearGradient(
        colors: [Colors.black, Colors.green],
        begin: Alignment.center,
        end: Alignment.bottomCenter

      ),
    );
  }

}