import 'package:flutter/material.dart';

class TackCard extends StatelessWidget {
  final String addTaskName;
  final bool isChecked;
  final void Function(bool?) checkBoxChange;

  const TackCard({
    Key? key,
    required this.addTaskName,
    required this.isChecked,
    required this.checkBoxChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      title: Text(
        addTaskName,
        style: const TextStyle(
          fontSize: 25.0,
        ),
      ),
    );
  }
}
