import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/data/task_inherited.dart';
import 'screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore:
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Criador de Tarefa em Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(
        child: const InitialScreen(),
      ),
    );
  }
}
