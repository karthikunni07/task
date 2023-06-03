import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/registor.dart';
import 'package:untitled7/sign.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final password=TextEditingController();
  final drawer=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
              Text("LOGIN"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter Your Email"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter Your Password"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign()));
              }, child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
              }, child: Text("Forget password")),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon:Icon(Icons.facebook)),
                IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){}, icon: Icon(Icons.account_balance)),
              ],
            ),
            TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
            }, child: Text("Don't have account sign in")),

          ],
        ),
      ),
    );
  }
}
