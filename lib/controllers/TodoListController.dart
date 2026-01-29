import 'package:get/get.dart';

class Todolistcontroller extends GetxController {
  var todoList = <String>[].obs;

  void addTodo(String todo) {
    todoList.add(todo);
  }

  void removeTodoAt(int index) {
    todoList.removeAt(index);
  }
  
}
