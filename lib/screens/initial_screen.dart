import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/screens/form_screen.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter', 'assets/images/dash.png', 3),
          Task('Andar de Bike', 'assets/images/bike.jpg', 4),
          Task('Meditar', 'assets/images/meditar.jpg', 3),
          Task('Ler', 'assets/images/ler.jpg', 0),
          Task('Jogar', 'assets/images/jogar.jpg', 5),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
