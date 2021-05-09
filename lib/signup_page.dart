import 'package:Assesment/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  TextEditingController fullname;
  TextEditingController email;
  TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Column(
        children: [
          Container(child: Imagepicker()),
          Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
            children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Full Name", focusColor: Colors.lightGreen),
                  controller: fullname,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email", focusColor: Colors.lightGreen),
                  controller: email,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Password", focusColor: Colors.lightGreen),
                  controller: password,
                ),
                FloatingActionButton(onPressed: ()=> {

                }, child: Text("Submit"),)
            ],
          ),
              ))
        ],
      ),
    );
  }
}
