import 'package:flutter/material.dart';

import 'package:bewiser/utils/dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Practice01 extends StatefulWidget {
  Practice01({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Practice01State();
}

class _Practice01State extends State<Practice01> {
  String _notes = '';

  _saveNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('notes', _notes);
  }

  _getNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String notes = prefs.getString('notes') ?? '';
    setState(() {
      _notes = notes;
    });
  }

  _takeNotes() async {
    String notes = await displayNotesDialog(context, _notes);
    if (notes != null) {
      setState(() {
      _notes = notes;
      });
      _saveNotes();
    }
  }

  @override
  void initState() {
    super.initState();
    _getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(
            'Practice1\nStep1.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n'+
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n'+
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                child: Text(_notes),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.amber),
                ),
                padding: EdgeInsets.all(15),
                onPressed: () async {
                  await _takeNotes();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n'+
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
            ),
          ],
        ),
      );
  }
}