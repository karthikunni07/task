import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/tgt.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
final formkey=GlobalKey<FormState>();
final passwordController=TextEditingController();
final confirmpasntrolswordController=TextEditingController();
final mob=TextEditingController();
final email=TextEditingController();
final name=TextEditingController();
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
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller:name ,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                    hintText: "enter your name"
                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return"name cannot be empty";
                    }else if(val.length<3){
                      return "name must be atleast 3 characters long";
                    }
                    return null;
                  },
                ),
              ),
      Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: mob,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Mobile Number",
              hintText: "enter your Mobile Number",
            ),
            validator: (val){
              if(val!.isEmpty){
                return"mobile no cannot be empty";
              }else if(val.length<3){
                return "mobile no must be atleast 3 characters long";
              }
              return null;
            },
          ),
      ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "enter your Email"
                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return"email cannot be empty";
                    }else if(val.length<3){
                      return "email must be atleast 3 characters long";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: confirmpasntrolswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "enter your Username"
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "enter your Password"
                  ),
                  validator: (val){
                    if(val!.isEmpty){
                      return"password cannot be empty";
                    }else if(val.length<3){
                      return "password must be atleast 3 characters long";
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
    if(formkey.currentState!.validate()){
    debugPrint("All validation passed");
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Ladki()));}
              }, child: Text("REGISTER")),
            ],

    ),
        )
      )
    );
  }
}
