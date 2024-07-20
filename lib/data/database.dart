import 'package:hive/hive.dart';

class toDoDataBase {
  // make a empty list
  late var toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the ist ever time to opening the app
  void createInitialData() {
    toDoList = [
      ["Write your task here!!", false]
    ];
  }

  // load the data from the data base
  void loadData() {
    toDoList = _myBox.get("ToDoList");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("ToDoLIst", toDoList);
  }
}
