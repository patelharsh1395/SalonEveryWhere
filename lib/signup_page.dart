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
      backgroundColor: Colors.red,
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
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      labelText: "Full Name", focusColor: Colors.lightGreen, fillColor: Colors.white70 , hoverColor:Colors.lightGreen ),
                  controller: fullname,
                ),
                TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                      labelText: "Email", focusColor: Colors.lightGreen),
                  controller: email,
                ),
                TextField(
                   cursorColor: Colors.red,
                   
                  decoration: InputDecoration(
                      labelText: "Password", focusColor: Colors.lightGreen),
                  controller: password,
                ),
                Container(
                    child: RaisedButton(
                  color: Colors.red,
                  child: Text("Submited"),
                  onPressed: () => {print("")},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
