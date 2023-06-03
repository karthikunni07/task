import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sudu extends StatefulWidget {
  const Sudu({Key? key}) : super(key: key);

  @override
  State<Sudu> createState() => _SuduState();
}

class _SuduState extends State<Sudu> {
  final Delay=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: Delay,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_month
                    ),
                    border: OutlineInputBorder(),
                    labelText: "DATE"
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.punch_clock
                    ),
                    border: OutlineInputBorder(),
                    labelText: "TIME"
                  ),
                  onTap: () async {
                    TimeOfDay?timepick=await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input,
                    );
                    if (timepick!=null) {
                      print(timepick);
                      String formattedTime=timepick.format(context);
                      print(formattedTime);
                      setState(() {
                        password.text=formattedTime;
                      });
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("SUBMIT"))
            ],
          ),
        ),
      );
  }
}
