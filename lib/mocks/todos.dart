import 'package:to_do_app/Models/model_class.dart';

class Todos {
  static List<Todo> myToDos = [
    Todo(
      id: '1',
      toDoName: 'Feed The Dog',
      fromDate: DateTime(2022, 2, 9),
      toDate: DateTime(2022, 2, 10),
    ),
    Todo(
      id: '2',
      toDoName: 'Buy Milk',
      fromDate: DateTime(2022, 2, 9),
    ),
    Todo(
      id: '3',
      toDoName: 'Go for a walk',
      fromDate: DateTime(2022, 2, 9),
      toDate: DateTime(2022, 2, 11),
    ),
  ];
}
