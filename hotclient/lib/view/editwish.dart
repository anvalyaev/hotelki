import 'package:flutter/material.dart';
import '../viewmodel/index.dart' as ViewModel;
import '../widget/wishlist.dart' as Widgets;

class EditWish extends ViewModel.EditWish {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Wish"),
          leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Map<String, dynamic> data = new Map<String, dynamic>();
                  data['title'] = title;
                  data['description'] = description;
                  Navigator.pop(context, data);
                },
              ),
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Title",
              
            ),
            maxLines: 1,
            controller: titleController,
          ),
          SizedBox(
            height: 12
          ),
          Expanded(
            child: TextFormField(
            decoration: InputDecoration.collapsed(
              hintText: "Description",
            ),
            maxLines: 100,
            controller: descriptionController,
          ),
          )
        ])));
  }
}
