import 'package:flutter/material.dart';

class Longitud extends StatelessWidget{

  TextEditingController MiKmControler = TextEditingController();
  TextEditingController MmCmControler = TextEditingController();
  TextEditingController YdMControler = TextEditingController();
  TextEditingController MnKmControler = TextEditingController();
  double resultado;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(

        title: Text("Conversor De Longitud"),
        backgroundColor: Colors.green,

      ),

      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            /*-------------------------------Primera tarjeta--------------------------------------------------------*/
            Card(//millas a kilometros

              child: Column(

                children: <Widget>[

                  ListTile(

                    leading: Icon(Icons.arrow_forward),
                    title: Text("Millas a Kilometros"),

                  ),

                  TextField(

                    controller: MiKmControler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                    ),


                  ),

                  ButtonTheme.bar(

                    child: ButtonBar(

                      children: <Widget>[
                        FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(MiKmControler.text) * 1.61;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Km")

                              );

                            } //builder

                          ); //Show Dialog

                        },

                      )

                      ],

                    ),

                  ),

                ],

              ),
            
            ),

            /*------------------------------------------------------------------------------------------------------*/

            /*-------------------------------Segunda tarjeta--------------------------------------------------------*/
            Card(
              child: Column(//milimetros a centimetros

                children: <Widget>[

                  ListTile(

                    leading: Icon(Icons.arrow_forward),
                    title: Text("Milimetros a Centimetros"),

                  ),

                  TextField(

                    controller: MmCmControler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                    ),


                  ),

                  ButtonTheme.bar(

                    child: ButtonBar(

                      children: <Widget>[
                        FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(MmCmControler.text) * 0.1;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Cm")

                              );

                            } //builder

                          ); //Show Dialog

                        },

                      )

                      ],

                    ),

                  ),

                ],

              ),
            ),

            /*------------------------------------------------------------------------------------------------------*/

            /*-------------------------------Tercera tarjeta--------------------------------------------------------*/
            Card(
              child: Column(//Yardas a metros

                children: <Widget>[

                  ListTile(

                    leading: Icon(Icons.arrow_forward),
                    title: Text("Yardas a Metros"),

                  ),

                  TextField(

                    controller: YdMControler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                    ),


                  ),

                  ButtonTheme.bar(

                    child: ButtonBar(

                      children: <Widget>[
                        FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(YdMControler.text) * 0.9144;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado m")

                              );

                            } //builder

                          ); //Show Dialog

                        },

                      )

                      ],

                    ),

                  ),

                ],

              ),
            ),

            /*------------------------------------------------------------------------------------------------------*/

            /*-------------------------------Cuarta tarjeta--------------------------------------------------------*/
            Card(
              child: Column(//Milla Nautica a Kilometros

                children: <Widget>[

                  ListTile(

                    leading: Icon(Icons.arrow_forward),
                    title: Text("Milla náutica a Kilometros"),

                  ),

                  TextField(

                    controller: MnKmControler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),

                    ),


                  ),

                  ButtonTheme.bar(

                    child: ButtonBar(

                      children: <Widget>[
                        FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(MnKmControler.text) * 1.852;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Km")

                              );

                            } //builder

                          ); //Show Dialog

                        },

                      )

                      ],

                    ),

                  ),

                ],

              ),
            ),


            /*-----------------------------------------------------------------------------------------------------*/


          ],
        ),

      ),

    );
  }
}  
