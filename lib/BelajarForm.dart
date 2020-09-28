import 'package:flutter/material.dart';

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  double nilaiSlider    = 1;
  bool   nilaiCheckBox  = false;
  bool   nilaiSwitch    = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar form"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0), child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Masukan Nama Lengkap",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  ),
                  // ignore: missing_return
                  validator: (value) {
                    if(value.isEmpty) {
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Masukan password anda",
                      labelText: "Password",
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                      ),
                    validator: (value) {
                      if(value.isEmpty) {
                       return "PASSWORD TIDAK BOLEH KOSONG";
                      }
                      return null;
                    }
                    ),
                  ),

                CheckboxListTile(
                  title: Text("Belajar FLutter"),
                    subtitle: Text('Dart, Widget, http'),
                    value: nilaiCheckBox,
                    activeColor: Colors.deepPurpleAccent,
                    onChanged: (value) {
                        setState(() {
                         nilaiCheckBox = value;
                        });
                    }),
                    SwitchListTile(
                      title: Text("Backend Programming"),
                        subtitle: Text('JAVA, SPRING'),
                        value: nilaiSwitch,
                        activeTrackColor: Colors.pink[100],
                        activeColor: Colors.red,
                        onChanged: (value) {
                        setState(() {
                          nilaiSwitch = value;
                        });
                        }),
                    Slider(
                      value: nilaiSlider,
                      min: 0,
                      max: 100,
                      onChanged: (value){
                        setState(() {
                          nilaiSlider = value;
                        });
                      },
                    ),
                  RaisedButton(
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      if(_formKey.currentState.validate()) {}
                    },
                  ),
                // Widget Column
              ],
            ),
          ),
        ),
      ),
    );
  }
}
