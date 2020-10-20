
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginflutter/screens/dashboard.dart';

class LoginPage extends StatelessWidget{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.headline6;


    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: TextField(
                  controller: usernameController,
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: TextField(
                  controller: passwordController,
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  )
                ),
              ),
                RaisedButton(
                  color: Theme.of(context).primaryColorDark,
                  textColor: Theme.of(context).primaryColorLight,
                  child: Text("Login"),
                  onPressed: () => loginClick(context),
                )
              ]
          ),
        ],
      ),
    );
  }

  loginClick(BuildContext context) {
    if (usernameController != null && passwordController != null)
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

}