import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled7/registor.dart';

class Ladki extends StatefulWidget {
  const Ladki({Key? key}) : super(key: key);

  @override
  State<Ladki> createState() => _LadkiState();
}

class _LadkiState extends State<Ladki> {
  final formkey=GlobalKey<FormState>();
  final passworController=TextEditingController();
  final confirmpasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormValidation"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 10),
                child: TextFormField(
                  controller: passworController,
                  decoration:
                  InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:"user name",
                    hintText: "enter your username",

                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return"Username cannot be empty";
                    }else if(val.length<3){
                      return "username must be atleast 3 characters long";
                    }
                    return null;
                  },
                  ),
                ),

              // SizedBox(height: 10,),
               Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
                child: TextFormField(
                  controller: confirmpasswordController,
                decoration:
                InputDecoration(
                border:OutlineInputBorder(),
    labelText: "password",
    hintText: "enter your password",
    ),
                  validator: (val){
                    if(val!.isEmpty){
                      return"password cannot be empty";
                    }else if(val.length<3){
                      return"password must be atleast 3 characters long";
                    }
                    return null;
                  },
    ),
          ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  // if(formkey.currentState!.validate()){
                  //   debugPrint("All validation passed");
                  //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
                  //
                  // }
                  Fluttertoast.showToast(msg: "Successfully");
                }, child:Text("LOGIN")),
              ),
  ]
      ),
        ),
      )
    );
  }
}
