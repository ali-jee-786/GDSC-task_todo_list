import 'package:flutter/material.dart';
import 'package:todo_app_using_sqlite/database/db_connection.dart';

class TodoListBuilder extends StatefulWidget {
  const TodoListBuilder({super.key});

  @override
  State<TodoListBuilder> createState() => _TodoListBuilderState();
}

class _TodoListBuilderState extends State<TodoListBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DbConnection().readData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: todosList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(255, 35, 30, 50),
              child: ListTile(
                leading: Text(todosList[index]['id'].toString()),
                title: Text(todosList[index]['Name']),
              ),
            );
          }),
    );
  }
}
