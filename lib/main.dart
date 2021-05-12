import 'package:Assesment/login.dart';

import 'package:flutter/material.dart';

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// Generated in previous step
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
    _configureAmplify();
    _signup();
    _confirmation();
  }

  void _configureAmplify() async {
    // Add Pinpoint and Cognito Plugins, or any other plugins you want to use

    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    Amplify.addPlugins([authPlugin]);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      var configure = Amplify.configure(amplifyconfig);
      await configure;
    } on AmplifyAlreadyConfiguredException {
      print(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  void _signup() async {
    try {
      Map<String, String> userAttributes = {
        'email': 'email1@domain.com',
        'password': 'mysupersecurepassword'
        
        
        // additional attributes as needed
      };
      SignUpResult res = await Amplify.Auth.signUp(
          username: userAttributes['email'],
          password: 'mysupersecurepassword',
          options: CognitoSignUpOptions(userAttributes: userAttributes));
      setState(() {
        print(res.isSignUpComplete);
      });
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  void _confirmation() async {
    try {
      SignUpResult res = await Amplify.Auth.confirmSignUp(
          username: 'email1@domain.com', confirmationCode: '123456');
      setState(() {
        print(res.isSignUpComplete);
      });
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        //home: MyHomePage(title: 'Flutter Demo Home Page'),
        home: Login());
  }
}
