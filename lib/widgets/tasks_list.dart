import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class Taskslist extends StatelessWidget {
  const Taskslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<TaskData>(context).task.length,
        itemBuilder: (context, index) {

          return TaskTile(Provider.of<TaskData>(context).task[index].isDone,
              Provider.of<TaskData>(context).task[index].name, (checkboxState) {
            Provider.of<TaskData>(context,listen: false)
                .updateTask(Provider.of<TaskData>(context,listen: false).task[index]);
          },(){Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).task[index]);});
        });
  }
}
