import 'package:flutter/material.dart';
import 'package:todo_app_using_sqlite/database/db_connection.dart';
import 'package:todo_app_using_sqlite/widgets/floating_button.dart';
import 'package:todo_app_using_sqlite/widgets/search_todos.dart';
import 'package:todo_app_using_sqlite/widgets/todo_list_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DbConnection db = DbConnection();
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    db.readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: const FloatingButton(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Todo List',
            style: TextStyle(fontSize: 25),
          ),
          SearchTodos(),
          SizedBox(
            height: 20,
          ),
          TodoListBuilder(),
        ],
      ),
    );
  }
}
