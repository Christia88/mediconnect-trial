
import 'package:flutter/material.dart';
import 'package:mediconnect/pages/botnav.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  get blue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Botnav(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Patient',style: TextStyle(color: Colors.white, fontSize: 25)),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
