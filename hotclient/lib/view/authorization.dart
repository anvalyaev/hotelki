import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;

class Authorization extends ViewModel.Authorization {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
        //   child: SizedBox(
        //     width: double.infinity,
        //     height: 60,
        //     child: RaisedButton(
        //       child: Text("Sign in"),
        //       onPressed: () {
        //         initAuthorization();
        //       },
        //     ),
        //   ),
        // ),
        body: Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Icon(
                Icons.account_circle,
                // size: 200,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          // Spacer(),
          TextFormField(
            controller: loginController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Login"),
            maxLines: 1,
            onSaved: (String value) {
              login = value;
            },
          ),
          SizedBox(height: 12.0),
          TextFormField(
            controller: passwordController,
            obscureText: obscurePassword,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                suffixIcon: new GestureDetector(
                  onTap: () {
                    obscurePassword = !obscurePassword;
                  },
                  child: new Icon(obscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                )),
            maxLines: 1,
            onSaved: (String value) {
              password = value;
            },
          ),
          SizedBox(height: 12.0),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: OutlineButton(
              child: Text("Sign up"),
              onPressed: () {
                Navigator.pushNamed(context, '/UserCreation');
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: RaisedButton(
              child: Text("Sign in"),
              onPressed: () {
                initAuthorization();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
