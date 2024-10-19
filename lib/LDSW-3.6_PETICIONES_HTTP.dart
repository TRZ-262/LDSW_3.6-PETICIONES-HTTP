import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_to_flutter/screens/RowColumn/example_screen.dart';
import 'package:welcome_to_flutter/screens/RowColumn/row_column_screen.dart';

void main() {
  runApp(MyApp());
}

//ROW & COLUMN
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      title: 'DEMO',
      initialRoute: RowColumnScreen.id,
      routes: {
        RowColumnScreen.id: (context) => RowColumnScreen(),
        ExampleScreen.id: (context) => ExampleScreen()
      },
    );
  }
}

//STACK
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.blue[200],
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue[600],
          ),
        ],
      ),
    ),
  );
}

//CONTAINER
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Container(
        alignment: Alignment.bottomRight,
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'HOLA CONTAINER',
          style: TextStyle(fontSize: 30),
        ),
      ),
    ),
  );
}

//TEXT
Widget build(BuildContext context) {
  return const Center(
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        'HOLA WIDGET TEXT',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          wordSpacing: 2,
          letterSpacing: 2,
          fontSize: 30,
        ),
      ),
    ),
  );
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Column(
        children: [
          Text('BIENVENIDO A FLUTTER'),
          BigCard(pair: pair),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('HOLA MUNDO'),
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Text(pair.asLowerCase);
  }
}
