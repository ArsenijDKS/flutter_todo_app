import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the box
  final _myBox = Hive.box("myBox");

  // Run this, if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["make a dinner", false],
      ["exercise", false],
    ];
  }

  // Load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
