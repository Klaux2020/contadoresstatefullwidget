import 'package:contadoresstatefullwidget/estilos/estilos.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
 
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int a1 = 0;
  int a2 = 0;
  int a3 = 0;
  int a4 = 0;
  int a5 = 0;
  int a6 = 0;

  void Totalizar(){
    a6 = a1 + a2 + a3 + a4 + a5;
    setState(() {});
  }

  void Inicializar(){
  a1 = 0;
  a2 = 0;
  a3 = 0;
  a4 = 0;
  a5 = 0;
  a6 = 0;
  setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: 
        FloatingActionButton(
          onPressed: (){
            Inicializar();
          },
          backgroundColor: Colors.red,
          child: Text(
            "RESET",
            style: TextStyle(color: Colors.white),
            ),
          
          ),
          appBar: AppBar(),
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
  //*Primea Fila
            Text("$a6",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 50),
            ),
  //*Segunda Fila
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    Text( "Contador1",
                    style: estilo, 
                    ),
                    Text("$a1",
                    style: estilo,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        a1++;
                        Totalizar();
                      }, 
                      child: Text("add"),
                      ), 
                  ],
                ),
                  Column(
                  children: [
                    Text( "Contador2",
                    style: estilo, 
                    ),
                    Text("$a2",
                    style: estilo,
                    ), 
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        a2++;
                        Totalizar();
                      }, 
                      child: Text("add"),
                      ), 
                  ],
                ),
                ],
              ), 
              Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
//**Tercera Fila 
       Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    Text( "Contador3",
                    style: estilo, 
                    ),
                    Text("$a3",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        a3++;
                        Totalizar();
                      }, 
                      child: Text("add"),
                      ), 
                  ],
                ),
                  Column(
                  children: [
                    Text( "Contador4",
                    style: estilo, 
                    ),
                    Text("$a4",
                    style: estilo,
                    ), 
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        a4++;
                        Totalizar();
                      }, 
                      child: Text("add"),
                      ), 
                  ],
                ),
                ],
              ), 
               Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 83, 77, 77),
                  ),
//**Cuarta Fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    Text( "Contador5",
                    style: estilo, 
                    ),
                    Text("$a5",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        a5++;
                        Totalizar();
                      }, 
                      child: Text("add"),
                      ), 
                  ],
                ),
                ],
              ), 
              ],
                 ),
        ),
      );
  }
}