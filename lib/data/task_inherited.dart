import 'package:flutter/material.dart';
import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/dash.png', 3),
    Task('Andar de Bike', 'assets/images/bike.jpg', 4),
    Task('Meditar', 'assets/images/meditar.jpg', 3),
    Task('Ler', 'assets/images/ler.jpg', 0),
    Task('Jogar', 'assets/images/jogar.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(
      Task(name, photo, difficulty),
    );
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'Not found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
