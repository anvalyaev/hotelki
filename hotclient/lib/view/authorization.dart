import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;

class Authorization extends ViewModel.Authorization {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Icon(
              Icons.account_circle,
              size: 200,
              color: Theme.of(context).accentColor,
            ),
          ),
          Spacer(flex: 20),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Login"),
            maxLines: 1,
          ),
          Spacer(flex: 20),
          TextFormField(
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
          ),
          Spacer(flex: 20),
        ],
      ),
    ));
  }
}
