import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTodos extends StatelessWidget {
  const SearchTodos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
            decoration: InputDecoration(
          prefixIcon: const Icon(CupertinoIcons.search),
          hintText: 'Search ',
          filled: true,
          fillColor: const Color.fromARGB(255, 41, 40, 40),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide.none),
        )),
      ),
    );
  }
}
