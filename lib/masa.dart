import 'package:flutter/material.dart';

class Masa extends StatelessWidget{

  TextEditingController KGControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController GKControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController KgLbControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController TonKnControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  double resultado;//variable para todos

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Conversor De Masa"),
        backgroundColor: Colors.green,

      ),

      body: SingleChildScrollView(

        child: Column(

        children: <Widget>[

/*-------------------------------Primera tarjeta--------------------------------------------------------*/

          Card(//Primer tarjeta "kilogramos a gramos"

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.whatshot),
                  title: Text('Kilogramos a Gramos'),

                ),


                TextField(

                  controller: KGControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    //helperText: 'Convertir kg -> grs',
                    

                  ),

                ),

                ButtonTheme.bar(

                  child: ButtonBar(

                    children: <Widget>[

                      FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(KGControler.text) * 1000;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Grs")

                              );

                            }

                          );

                        },

                      )

                    ],

                  ),

                )

              ],

            ),

          ),

/*------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------Segunda tarjeta--------------------------------------------------------*/

          Card(
            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Gramos a Kiloramos'),

                ),


                TextField(

                  controller: GKControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    //helperText: 'Convertir Grs -> Kg',
                    

                  ),

                ),

                ButtonTheme.bar(

                  child: ButtonBar(

                    children: <Widget>[

                      FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(GKControler.text) * 0.001;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Kg")

                              );

                            }

                          );

                        },

                      )

                    ],

                  ),

                )

              ],

            ),
            
          ),


/*------------------------------------------------------------------------------------------------------------*/

/*------------------------------------Tercer tarjeta---------------------------------------------------------*/
          Card(//Kilogramos => Libras

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Kiloramos a Libras'),

                ),


                TextField(

                  controller: KgLbControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    //helperText: 'Convertir Kg -> Lb',
                    

                  ),

                ),

                ButtonTheme.bar(

                  child: ButtonBar(

                    children: <Widget>[

                      FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(KgLbControler.text) * 2.204623;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Lb")

                              );

                            }

                          );

                        },

                      )

                    ],

                  ),

                )

              ],

            ),

          ),

/*------------------------------------------------------------------------------------------------------------*/

/*------------------------------------Cuarta tarjeta---------------------------------------------------------*/
          Card(//Tonelada => KiloNewton

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Toneladas a Kilonewton'),

                ),


                TextField(

                  controller: TonKnControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    //helperText: 'Convertir Ton -> Kn',
                    

                  ),

                ),

                ButtonTheme.bar(

                  child: ButtonBar(

                    children: <Widget>[

                      FlatButton(//se crea un boton 

                        child: Text('Convertir'),

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(TonKnControler.text) * 9.806652;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado kN")

                              );

                            }

                          );

                        },

                      )

                    ],

                  ),

                )

              ],

            ),),

/*------------------------------------------------------------------------------------------------------------*/

        ],

      ),

      ),
    );
  }
} 