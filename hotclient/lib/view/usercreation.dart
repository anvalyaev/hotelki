import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;

class UserCreation extends ViewModel.UserCreation {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
          child:SizedBox(
          width: double.infinity,
          height: 60,
          child: RaisedButton(
            child: Text("Sign in"),
            onPressed: () {
              initRegister();
            },
          ),
        ),),
        body: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  prefixIcon: new Icon(Icons.person),
                ),
                maxLines: 1,
                onSaved: (String value){name = value;},
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: genderController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Gender",
                  prefixIcon: new Icon(Icons.person),
                ),
                maxLines: 1,
                onSaved: (String value){gender = value;},
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone",
                  prefixIcon: new Icon(Icons.phone),
                ),
                maxLines: 1,
                onSaved: (String value){phone = value;},
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "eMail",
                  prefixIcon: new Icon(Icons.email),
                ),
                maxLines: 1,
                onSaved: (String value){email = value;},
              ),
              SizedBox(height: 12.0),
              TextFormField(
                // controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Birthdate",
                  prefixIcon: new Icon(Icons.child_friendly),
                ),
                maxLines: 1,
                // onSaved: (String value){birthdate = value;},
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: passwordController,
                obscureText: obscurePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: new Icon(Icons.lock),
                    suffixIcon: new GestureDetector(
                      onTap: () {
                        obscurePassword = !obscurePassword;
                      },
                      child: new Icon(obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    )),
                maxLines: 1,
                onSaved: (String value){password = value;},
              ),
              SizedBox(height: 12.0),
              SizedBox(height: 12.0),
            ],
          ),
        ));
  }
}
