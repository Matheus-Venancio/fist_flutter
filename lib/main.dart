import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
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
  int _numeroAleatorio = 0;
  List<String> _frases = ['Grandes guerreiros fazem grandes sacrificios para virar heroi',
    'Perder para a razão, sempre é ganhar',
    'O medo de perder tira a vontade de ganhar',
    'Ser ou não ser, eis a questão',
    'È melhor conquistar a si mesmo do que vencer mil batalhas'];//LIST DE FRASES

  /**metoo pra somar os numeros**/
  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(4);//Gera um numero aleatorio ate o valor 4
    });
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
          children: <Widget>[
            const Text(
              'Precione o botão para gerar uma frase',
            ),
            Text(
              _frases[_numeroAleatorio],//Exibir as frases aleatoriamente.
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      //È o botao
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,//é quando algo é precionado, no caso nesse increment counter que esta o evento de soma
        tooltip: 'Increment',
        child: const Icon(Icons.add),/**simbolo de adicionar**/
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
