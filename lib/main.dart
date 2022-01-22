import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context){
        return TaskData();
      } ,
      child: MaterialApp(
        home: Taskscreen(),
      ),
    );
  }
}
