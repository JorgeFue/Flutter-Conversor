import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{//elstateless no se puede modificar como se pinta se queda

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MenuLateral();
  }

}

class MenuLateral extends StatefulWidget{//el stateful se puede cambiar o editar

    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuLateralState();
  }

}

class MenuLateralState extends State <MenuLateral>{

  @override
  Widget build(BuildContext context) {//menu lateral
    // TODO: implement build
    return Scaffold(

              appBar: AppBar(//titulo de la pantalla
                title: Text('Conversor :)'),
                backgroundColor: Colors.green,
              ),


              body: Center(//nos permite centrar contenido
                child: Image.asset("Images/luffym.png"),//recursos adicionales de la aplicaion. Videos audios imagenes
              ),

              drawer: Drawer(//

                child: ListView(

                  children: <Widget>[
                    
                    UserAccountsDrawerHeader(//

                      decoration: BoxDecoration(// color del avatar
                        color: Colors.green
                      ),


                      accountName: Text("Jorge Fue"), //Nombre que se muestra

                      accountEmail: Text("16030021@itcelaya.edu.mx"),//Correo que se muestra

                      currentAccountPicture: CircleAvatar(//para poner imagen 
                        backgroundImage: NetworkImage("https://vignette.wikia.nocookie.net/bleach3phantom/images/1/1a/Isshin_Kurosaki.png/revision/latest?cb=20141124200543"),
                      ),

                    ),

                    ListTile(//para agragar elementos a la lista
                      title: Text('Masa'),//nombre
                      trailing: Icon(Icons.adjust),//icono izq
                      onTap: (){//evento al tocar 
                        Navigator.pop(context);//Para cerrar la barrita de a lado
                        Navigator.pushNamed(context, '/masa');
                      },

                    ),

                    ListTile(//para agragar elementos a la lista
                      title: Text('Volumen'),//nombre
                      trailing: Icon(Icons.adjust),//icono izq
                      onTap: (){//evento al tocar 

                        Navigator.pop(context);//Para cerrar la barrita de a lado
                        Navigator.pushNamed(context, '/vol');//Esto es para darle la direccion.Push para introducir, pop up para sacar

                      },

                    ),

                    ListTile(//para agragar elementos a la lista
                      title: Text('Temperatura'),//nombre


                      trailing: Icon(Icons.adjust),//icono izq
                      onTap: (){//evento al tocar 
                        Navigator.pop(context);//Para cerrar la barrita de a lado
                        Navigator.pushNamed(context, '/temp');//para direccionar al widget
                      },

                    ),

                    ListTile(//para agragar elementos a la lista
                      title: Text('Longitud'),//nombre
                      trailing: Icon(Icons.adjust),//icono izq
                      onTap: (){//evento al tocar 
                        Navigator.pop(context);//Para cerrar la barrita de a lado
                        Navigator.pushNamed(context, '/long');
                      },

                    ),

                  ],
                ),
              ),

              ); 
  }

}