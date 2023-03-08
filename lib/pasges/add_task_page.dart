import 'package:flutter/material.dart';

class AddTasksPage extends StatelessWidget {
  final Function addTaskCallBack;
  const AddTasksPage({super.key, required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String? newTaskName;
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: const Color(0xFF1f1f1f),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xFF333333),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: const Text(
              "ADD YOUR TASKS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (newText) {
              newTaskName = newText;
            },
          ),
          const SizedBox(height: 44.0),
          FloatingActionButton(
            backgroundColor: const Color(0xFFe25e54),
            onPressed: (() {
              addTaskCallBack(newTaskName);
            }),
            child: const Icon(
              Icons.arrow_upward_outlined,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
