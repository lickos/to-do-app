import 'package:flutter/material.dart';
import 'package:to_do_app/Models/model_class.dart';
import 'package:to_do_app/mocks/todos.dart';

class ToDosPage extends StatefulWidget {
  const ToDosPage({Key? key}) : super(key: key);

  @override
  _ToDosPageState createState() => _ToDosPageState();
}

class _ToDosPageState extends State<ToDosPage> {
  late List<Todo> myTodos;

  @override
  void initState() {
    myTodos = Todos.myToDos;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: myTodos.isNotEmpty
          ? Column(
              children: myTodos.map((e) {
                return Text(e.toDoName);
              }).toList(),
            )
          : const CircularProgressIndicator(
              color: Colors.blueAccent,
            ),
    );
  }
}
