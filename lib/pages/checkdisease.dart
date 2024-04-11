import 'package:flutter/material.dart';

class CheckDisease extends StatelessWidget {
  const CheckDisease({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Check Disease',style: TextStyle(color: Colors.white, fontSize: 25)),
        backgroundColor: Colors.blueAccent,
      ),

        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(
    children: <Widget>[
    const SizedBox(height: 10),
    Container(
    margin: EdgeInsets.only(top: 50),
    child: Text("Status of the Patient:", style: TextStyle(color: Colors.blueAccent, fontSize: 20, fontWeight: FontWeight.bold),),
    ),
    const SizedBox(height: 10),
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.blueAccent)
    ),
    width: 500,
    height: 50,
    child: Center(
      //print(output);
    child: Text("  ",
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    ),
    ),
    ),
    ),
    ]
    ),
    )
        )
    );
  }
}