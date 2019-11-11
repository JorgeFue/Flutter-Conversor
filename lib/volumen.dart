import 'package:flutter/material.dart';

class Volumen extends StatelessWidget{

  TextEditingController LtMiControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController M3LtControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController GalLtControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  TextEditingController OzGalControler = TextEditingController();//Esto es un controlador para cada caja de texto, es para traer el texto
  double resultado;//variable para todos

  @override
  Widget build(BuildContext context) {
    return Scaffold(//


    

      appBar:      
      AppBar(//para poner nombre a los widgets
                
        title: Text("Conversor De Volumen"),
        backgroundColor: Colors.green,

      ),
      
      

      body: 
      
      SingleChildScrollView(
        
        child: Column(

        children: <Widget>[
          
/*-------------------------------Primera tarjeta--------------------------------------------------------*/

          Card(//Primer tarjeta "Litros a Mililitros"

            color: Colors.green,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.whatshot),
                  title: Text('Litros -> Mililitros'),

                ),


                TextField(

                  controller: LtMiControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

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

                        textColor: Colors.black,

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(LtMiControler.text) * 1000;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado ml")

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

            color: Colors.green,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Metro cúbico -> Litros'),

                ),


                TextField(

                  controller: M3LtControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

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
                        textColor: Colors.black,

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(M3LtControler.text) * 1000;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Lt")

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
          Card(//Galones  => Litros

            color: Colors.green,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Galones -> Litros'),

                ),


                TextField(

                  controller: GalLtControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

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
                        textColor: Colors.black,

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(GalLtControler.text) * 4.546099;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Lt")

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
          Card(//Onza a Galon

            color: Colors.green,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: Column(

              children: <Widget>[

                ListTile(//es para darle titulo a la caja de texto en la tarjeta

                  leading: Icon(Icons.album),
                  title: Text('Onza -> Galon'),

                ),


                TextField(

                  controller: OzGalControler,//es el controlador de arriba para extraer lo que se le coloque a la caja de texto

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
                        textColor: Colors.black,

                        onPressed: (){//accion que se ejecutara

                          resultado = double.parse(OzGalControler.text) * 0.00625;//aqui esta la operacion que se realiza 
                          
                          return showDialog(

                            context: context,

                            builder: (context){

                              return AlertDialog(

                                content: Text("Resultado: $resultado Gal")

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