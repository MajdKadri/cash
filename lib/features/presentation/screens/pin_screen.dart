import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class LoginPage extends StatefulWidget {

  @override

  _LoginPageState createState() => _LoginPageState();

}


class _LoginPageState extends State<LoginPage> {

  final LocalAuthentication auth = LocalAuthentication();

  String _authorized = "Not Authorized";


  Future<void> _authenticate() async {

    bool authenticated = false;

    try {

      authenticated = await auth.authenticate(

        localizedReason: 'Please authenticate to access the app',

        options: const AuthenticationOptions(

          useErrorDialogs: true,

          stickyAuth: true,

        ),

      );

      setState(() {

        _authorized = authenticated ? "Authorized" : "Not Authorized";

      });

    } catch (e) {

      setState(() {

        _authorized = "Error: $e";

      });

    }

  }


  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Fingerprint Login'),

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Text(

              'Authentication Status: $_authorized',

              style: TextStyle(fontSize: 20),

            ),

            SizedBox(height: 20),

            ElevatedButton(

              onPressed: _authenticate,

              child: Text('Login with Fingerprint'),

            ),

          ],

        ),

      ),

    );

  }

}