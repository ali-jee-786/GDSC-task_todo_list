import 'package:flutter/material.dart';
import 'package:todo_app_using_sqlite/database/db_connection.dart';

class AddTodo extends StatefulWidget {
  AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  DbConnection db = DbConnection();

  final titleController = TextEditingController();

  void insert(BuildContext context) {
    if (titleController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Empty field!')));
      return;
    }

    db.insertData(Name: titleController.text);
    Navigator.pop(context);
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Added Succesfully')));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Todo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: titleController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(hintText: 'What to do...'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () async {
                      insert(context);
                    },
                    child: const Text('Save'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
