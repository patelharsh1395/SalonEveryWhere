import 'package:Assesment/profile_page.dart';
import 'package:Assesment/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  TextEditingController username;
  TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Card(
            borderOnForeground: true,
            child: Container(
              
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
               
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "User Name", focusColor: Colors.lightGreen),
                    controller: username,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password", focusColor: Colors.lightGreen),
                    controller: password,
                  ),
                  FlatButton(
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            )
                          },
                      child: Text('Login')),
                  FlatButton(onPressed: () => {

                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()),
                            )
                  }, child: Text('Signup')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
