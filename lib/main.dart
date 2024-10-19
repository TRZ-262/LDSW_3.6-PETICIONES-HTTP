import 'package:flutter/material.dart';
import 'package:welcome_to_flutter/screens/RowColumn/example_screen.dart';
import 'package:welcome_to_flutter/screens/RowColumn/row_column_screen.dart';

void main() {
  runApp(MyApp());
}

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
