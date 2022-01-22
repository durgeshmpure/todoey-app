import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey_app/models/task_data.dart';
import 'add_screen.dart';
import 'package:todoey_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class Taskscreen extends StatelessWidget {
  const Taskscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) =>
                  SingleChildScrollView(child: Addscreen(
                  )));
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 45,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Todoey',
                    style: GoogleFonts.roboto(
                        fontSize: 40,
                        color: Colors.white,
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Provider.of<TaskData>(context).taskcount} Tasks",
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 50, top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                height: 575,
                width: 400,
                child: Taskslist(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
