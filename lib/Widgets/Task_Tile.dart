import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is Task'),
      trailing: Checkbox(
        onChanged: (bool value) {},
        value: false,
      ),
    );
  }
}
