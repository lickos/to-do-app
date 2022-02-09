class Todo {
  final String id;
  final String toDoName;
  DateTime? fromDate;
  DateTime? toDate;

  Todo({required this.id, required this.toDoName, this.fromDate, this.toDate});

  factory Todo.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as String; // cast as non-nullable String
    final toDoName = data['toDoName'] as String; // cast as non-nullable String
    final fromDate = data['year_opened'] as DateTime?;
    final toDate = data['year_opened'] as DateTime?;
    // cast as nullable int
    return Todo(id: id, toDoName: toDoName, fromDate: fromDate, toDate: toDate);
  }
}
