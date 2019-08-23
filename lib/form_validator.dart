import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(FormValidator());

class FormValidator extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<FormValidator> {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      borderSide: BorderSide(
        width: 2,
        color: Colors.grey,
      )
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.amber, accentColor: Colors.amberAccent),
        home: Scaffold(
            backgroundColor: Colors.amberAccent,
            body: Center(
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 12),
                        child:
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.all(14),
                            border: border,
                            focusedBorder: border,
                            enabledBorder: border,
                            hintText: 'Username',
                          ),
                          validator: (String arg) {
                            if (arg.length == 0) {
                              return "Username can't be empty";
                            } else if (arg.length > 25) {
                              return "Username max 25";
                            } else
                              return null;
                          }
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 12),
                        child:
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.all(14),
                            border: border,
                            focusedBorder: border,
                            enabledBorder: border,
                            hintText: 'Email',
                          ),
                          validator: (String value) {
                            Pattern pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(value))
                              return 'Enter Valid Email';
                            else
                              return null;
                          }
                        ),
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Validate'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          } else {
                            setState(() {
                              _autoValidate = true;
                            });
                          }
                        },
                      )
                    ],
                  ),
                )
            )
        )
    );
  }
}