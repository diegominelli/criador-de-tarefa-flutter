import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Criador de Tarefa em Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarefas'),
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Task('Aprender Flutter ccccccccccccccccccccccccc'),
            const Task('Andar de skate'),
            const Task('Meditar'),
            const Task('Meditar'),
            const Task('Meditar'),
            const Task('Meditar'),
            const Task('Meditar'),
            const Task('Meditar'),
            const Task('Meditar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 200,
                    child: Text(
                      nome,
                      style: const TextStyle(
                          fontSize: 24, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_drop_up),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
