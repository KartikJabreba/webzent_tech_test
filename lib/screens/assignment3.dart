import 'package:flutter/material.dart';
import 'package:webzent_tech_test/utils/storage.dart';

class Assignment3 extends StatefulWidget {
  @override
  _Assignment3State createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  TextEditingController _name = new TextEditingController();
  String name;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = Storage.getUserName();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 3'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.white,
                child: name.contains('')
                    ? Text('No Name\n Plzz input')
                    : Text(name)),
            TextField(
              controller: _name,
            ),
            TextButton(
                onPressed: () {
                  Storage.setUserName(_name.text);
                  setState(() {
                    name = _name.text;
                  });
                },
                child: Text('input'))
          ],
        ),
      ),
    );
  }
}
