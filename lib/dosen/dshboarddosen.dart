import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progmob_2021/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DshboardDosen extends StatefulWidget {
  const DshboardDosen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DshboardDosen> createState() => _DshboardDosenState();
}

class _DshboardDosenState extends State<DshboardDosen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){

              },
            )
          ],
        ),
        body: Container(
        key: _formKey,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: GestureDetector(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Pak Argo"),
                    subtitle: Text("07136515 - Argo@staff.ukdw.ac.id"),
                  )
                ],
              ),
            )
          )
        )
    );
  }
}