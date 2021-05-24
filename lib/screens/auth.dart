import 'package:flutter/material.dart';
import 'package:flutterLab/screens/Home.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _passwordController = TextEditingController();

  Widget _buildEmailTextField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black,
            ),
            hintText: 'Email',
            hintStyle:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).accentColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide:
                  BorderSide(width: 2, color: Theme.of(context).accentColor),
            )));
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
        obscureText: true,
        controller: _passwordController,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            hintText: 'Password',
            hintStyle:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).accentColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide:
                  BorderSide(width: 2, color: Theme.of(context).accentColor),
            )));
  }

  Widget _buildLoginButton() {
    return FlatButton(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Theme.of(context).accentColor,
          child: Text('LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(Home.routeName);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      child: Form(
                        child: Column(
                          children: [
                            _buildEmailTextField(),
                            SizedBox(height: 15),
                            _buildPasswordTextField(),
                            SizedBox(height: 15),
                            _buildLoginButton(),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Don\'t have an accocunt? ',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Raleway',
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
