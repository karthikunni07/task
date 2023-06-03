import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final Delay=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan,
        title: Text("EDIT TASK",
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add)
        ],
        leading: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text("Task Name",
               style: TextStyle(color: Colors.blue),),
             ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Date & Time",
              style: TextStyle(color: Colors.blue),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: Delay,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(),
                ),
                  onTap: ()async{
                    DateTime?datepick=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2025));
                    if(datepick!=null) {
                      print(datepick);
                      String formatdate=
                      DateFormat("yyyy-MM-dd").format(datepick);
                      print(formatdate);
                      setState(() {
                        Delay.text=formatdate;
                      });
                    }
                  }
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 100,width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(controller: password,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.punch_clock),
                        border: OutlineInputBorder(),
                        labelText: "Start Time",
                      ),
    onTap: () async {
      TimeOfDay?timepick = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        initialEntryMode: TimePickerEntryMode.input,
      );
      if (timepick != null) {
        print(timepick);
        String formattedTime = timepick.format(context);
        print(formattedTime);
        setState(() {
          password.text = formattedTime;
        });
      };
    }
                    ),
                  ),
                ),
                Container(height: 100,width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.punch_clock),
                        border: OutlineInputBorder(),
                        labelText: "End Time",
                      ),
    onTap: () async {
      TimeOfDay?timepick = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        initialEntryMode: TimePickerEntryMode.input,
      );
      if (timepick != null) {
        print(timepick);
        String formattedTime = timepick.format(context);
        print(formattedTime);
        setState(() {
          password.text = formattedTime;
        });
      };
    }
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(onPressed: (){},
                  child: Text("SUBMIT")),
            )
              ],
            )
        ),
      );
  }
}
