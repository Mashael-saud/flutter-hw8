import 'package:flutter/material.dart';

import 'package:hw8_2/components/task_card_page.dart';

import '../model/tasks.dart';

class ListTasks extends StatefulWidget {
  final List<Task> tasks;
  const ListTasks({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: ((context, index) {
          return TackCard(
            addTaskName: widget.tasks[index].taskName,
            isChecked: widget.tasks[index].isDone,
            checkBoxChange: (newValue) {
              setState(() {
                widget.tasks[index].changeState();
              });
            },
          );
        }));
  }
}
