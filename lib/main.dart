import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _bl_fb = false, _bl_go = false;
  final Empresa _facebook = Empresa("Facebook","Mark Zuckerberg",500000); //las variables privates deberán llevar final
  final Empresa _google = Empresa("Google","Larry Page",8000000);

  @override
  void initState(){ //para inicializar el state y se actualie el "activity"
    super.initState();

    print(_facebook.nombre);
    print (_facebook.propietario);
    print(_facebook.ingresoAnual);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),

      body: Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            ElevatedButton(   
              style: ElevatedButton.styleFrom(
                primary: Colors.blue //background - fondo del botón
                //onPrimary: Colors.green //foreground - color de letras del botón
                                          // PD. aunque no se ponga, predeterminadamente lo deja en blanco
              ),
              child: const Text("Google"), 
              onPressed: (){
                print("presionaste Google");                
              }, 
            ),
            ElevatedButton(   
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900] //background - fondo del botón
                //onPrimary: Colors.green //foreground - color de letras del botón
                                          // PD. aunque no se ponga, predeterminadamente lo deja en blanco
              ),
              child: const Text("Facebook"), 
              onPressed: (){
                print("presionaste Facebook");                
              }, 
            ),

            Text(_bl_fb ? _facebook.nombre : _bl_go ? _google.nombre : "imposible 1"),
            Text(_bl_fb ? _facebook.propietario : _bl_go ? _google.propietario : "imposible 2"),
            Text(_bl_fb ? _facebook.ingresoAnual.toString() : _bl_go ? _google.ingresoAnual.toString() : "imposible 3")                  
          ],
        ),
      )

    );
  }
}

class Empresa{
  String nombre="";
  String propietario="";
  int ingresoAnual=0;

  Empresa(this.nombre, this.propietario, this.ingresoAnual){
   /*  this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingresoAnual; */
  }  

}