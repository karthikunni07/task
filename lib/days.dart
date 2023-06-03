import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Days extends StatefulWidget {
  const Days({Key? key}) : super(key: key);

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  final list=['monday','tuesday','wednesday','thursday','friday','saturday','sunday'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButtonFormField(
              hint: Text("select"),
              items:list.map((e){
                return DropdownMenuItem(
                  value: e,
                    child: Text(e));
              }).toList(),
              onChanged: (value){})
        ],
      ),
    );
  }
}
