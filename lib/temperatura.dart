import 'package:flutter/material.dart';

class Temperatura extends StatelessWidget{
  TextEditingController CeFaControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController CeKeControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController FaKeControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController KeFaControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  double resultado;//variable para todos

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Conversor De Temperatura"),
        backgroundColor: Colors.green,

      ),

      body: SingleChildScrollView(

        child: Column(

        children: <Widget>[

/*-------------------------------Primera tarjeta--------------------------------------------------------*/

          Card(//Celsius a Fahrenheit

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.whatshot),
                  title: Text('Celsius -> Fahrenheit'),

                ),


                TextField(

                  controller: CeFaControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

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

                          resultado = (double.parse(CeFaControler.text) * 1.8) + 32;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado °F")

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

          Card(//Celsius a kelvin
            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Celsius -> Kelvin'),

                ),


                TextField(

                  controller: CeKeControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

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

                          resultado = double.parse(CeKeControler.text) + 273.15;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado °K")

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

            child: Column(//Fahrenheit a kelvin

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Fahrenheit -> Kelvin'),

                ),


                TextField(

                  controller: FaKeControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

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

                          resultado = ((double.parse(FaKeControler.text) - 32)*(5/9)) + 273.15;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado °K")

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
          Card(//Kelvin a Fahrenheit

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Kelvin -> Fahrenheit'),

                ),


                TextField(

                  controller: KeFaControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

                  keyboardType: TextInputType.number,//para el tipo de dato que tendra que ponerse en el teclado.

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

                          resultado = ((double.parse(KeFaControler.text) - 273.15) * 1.8) + 32;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado °F")

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