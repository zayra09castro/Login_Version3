import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Master Castro',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de materialApp
  } //fin de widget
} //fin de mi class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //fin de clase  IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //fin widget Action[]
        title: Text('Ingreso al Sistema'),
      ), //fin de appBar
      body: SafeArea(
        child: ListView(padding: EdgeInsets.symmetric(horizontal: 24.0), children: <Widget>[
          SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.asset('assets/cactus.jpg'),
              SizedBox(height: 16.0),
            ],
          ),
          if (!acceso)
            Column(children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    //fillColor: Colors.amber,
                    labelText: 'Nombre de Usuario'),
              ),
              SizedBox(height: 12.0),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      child: Text('CANCELAR'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    ), //fin de flatButton
                    RaisedButton(
                      child: Text(
                        'NEXT2',
                      ),
                      onPressed: () {
                        setState(() {
                          acceso = true;
                        });
                      },
                    ), //fin de RaisedButton
                  ], //fin de niños widget
                ), //fin de niño row
              ) //fin de padding
            ] //fi de widget[]

                ) //fin de columna
          //if verdadero
          else
            Center(
              child: Column(
                children: <Widget>[
                  Text('YAY,Estoy Ingresando'),
                  RaisedButton(
                    elevation: 20.0,
                    child: Text('Cerrar Sesion'),
                    onPressed: () {
                      setState(() {
                        acceso = false;
                      });
                    },
                  ) //fin boton sobre saliente
                ], //fin de niños widget []
              ),
            )

          //if falso
        ] //fin de widgets
            ), //fin de listView
      ), //fin de area segura
    ); //fin de scaffold
  } //fin de widget
} //fin clase IngresoSistema
