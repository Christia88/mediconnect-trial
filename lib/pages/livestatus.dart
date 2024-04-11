
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:mediconnect/pages/home.dart';


class LiveStatus extends StatelessWidget {
  const LiveStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Live Status',style: TextStyle(color: Colors.white, fontSize: 25)),
        backgroundColor: Colors.blueAccent,
      ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Align(alignment: Alignment.center,
                    child: Text("Heart Rate:", style: TextStyle(color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 5),
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 50),
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(color: Colors.blueAccent)
                          ),
                          child: Center(
                            child: Text("0 BPM", style: TextStyle(color: Colors.white, fontSize: 50)),
                          ),
                        )),
                const SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Align(alignment: Alignment.center,
                    child: Text("Oxygen Saturation:", style: TextStyle(color: Colors.purpleAccent, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 5),
                Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 50),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(color: Colors.blueAccent)
                      ),
                      child: Center(
                        child: Text("0 %", style: TextStyle(color: Colors.white, fontSize: 50)),
                      ),
                    )),
                const SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Align(alignment: Alignment.center,
                    child: Text("Temperature:", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 5),
                Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 50),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(color: Colors.blueAccent)
                      ),
                      child: Center(
                        child: Text("0 f", style: TextStyle(color: Colors.white, fontSize: 50)),
                      ),
                    ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Align(alignment: Alignment.center,
                    child: Text("Systolic Blood Pressure:", style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 5),
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 50),
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Center(
                      child: Text("0 mmHg", style: TextStyle(color: Colors.white, fontSize: 50)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Align(alignment: Alignment.center,
                    child: Text("Diastolic Blood Pressure:", style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 5),
                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 50),
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Center(
                      child: Text("0 mmHg", style: TextStyle(color: Colors.white, fontSize: 50)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        )
    );
  }
}


