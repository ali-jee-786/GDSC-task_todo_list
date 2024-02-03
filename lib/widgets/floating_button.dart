import 'package:flutter/material.dart';
import 'package:todo_app_using_sqlite/widgets/add_todo.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(),
            context: context,
            builder: (ctx) => AddTodo());
      },
      child: const Icon(Icons.add),
    );
  }
}
