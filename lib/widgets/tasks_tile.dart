import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String tasktile;
  Function togglcheckboxstate;
  VoidCallback longpresscallback;
  TaskTile(this.isChecked,this.tasktile,this.togglcheckboxstate,this.longpresscallback, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(
        tasktile,
        style: GoogleFonts.roboto(fontSize:17,fontWeight:FontWeight.bold,decoration: isChecked ? TextDecoration.lineThrough:null),
      ),
      trailing:Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:(newvalue){
            togglcheckboxstate(newvalue);
          }
      )
    );
  }
}

