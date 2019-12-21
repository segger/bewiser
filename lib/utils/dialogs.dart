import 'package:flutter/material.dart';

Future<String> displayNotesDialog(BuildContext context, String content) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Notes'),
        content: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          minLines: 4,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: TextEditingController()..text = content,
          onChanged: (value) {
            content = value;
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop(content);
            },
          ),
        ],
      );
    });
}
