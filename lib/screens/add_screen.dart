import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';


class Addscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = "Task 1" ;

    return Container(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 40, right: 40),
        child: Column(
          children: [
            Text('Add Task',
                style: GoogleFonts.roboto(
                    color: Colors.lightBlueAccent, fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (newvalue){
                newTaskTitle=newvalue;
              },
              autofocus: true,
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 19),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 100)),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlueAccent)),
              onPressed: (){
                final newtask=Task(newTaskTitle);
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('ADD',style: TextStyle(fontSize: 20),),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
      ),
    );
  }
}
