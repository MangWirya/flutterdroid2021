import 'package:flutter/material.dart';
import 'package:flutter_progmob_2021/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                  hintText: "contoh: Komang Wirya",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border : OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
              ),
              validator: (value){
                if (value!.isEmpty){
                  return 'Nama Tidak Boleh kosong';
                }
                return null;
              },
            ),
            Padding(
                padding: EdgeInsets.all(5.0),
            ),
            ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
                child: Text(
                    "Simpan"
                )
            ),
             ElevatedButton(onPressed: () async {
               SharedPreferences prefs = await SharedPreferences.getInstance();
               await prefs.setInt("is_login", 0);
               Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(builder: (context) => MyHomePage(title: "Halo Push")),
               );
             },
              child: Text(
              "Logout"
              )
             ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}