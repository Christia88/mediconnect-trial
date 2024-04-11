import 'package:flutter/material.dart';
import 'package:mediconnect/pages/botnav.dart';
import 'package:get/get.dart';

final patientName = TextEditingController();
final patientEmail = TextEditingController();
final patientNumber = TextEditingController();
final Rname = TextEditingController();
final Rnumber = TextEditingController();

class TextControllers extends GetxController{

  Rx<TextEditingController> patientName = TextEditingController().obs;
  Rx<TextEditingController> patientEmail = TextEditingController().obs;
  Rx<TextEditingController> patientNumber = TextEditingController().obs;
  Rx<TextEditingController> Rname = TextEditingController().obs;
  Rx<TextEditingController> Rnumber = TextEditingController().obs;

}

final TextControllers textControllers = Get.put(TextControllers());


class AboutP extends StatelessWidget {
  const AboutP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Patient',style: TextStyle(color: Colors.white, fontSize: 25)),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Positioned(
              left: 140,
              width: 80,
              height: 150,
              child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Align(alignment: Alignment.center,
                child: Text("Patient Details", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Patient Name',
                border: OutlineInputBorder(),
              ),
                controller: textControllers.patientName.value,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Patient Email',
                border: OutlineInputBorder(),
              ),
              controller: textControllers.patientEmail.value,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              controller: textControllers.patientNumber.value,
            ),

            Positioned(
              left: 140,
              width: 80,
              height: 150,
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Align(alignment: Alignment.center,
                  child: Text("Caretaker Details", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              controller: textControllers.Rname.value,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
                controller: textControllers.Rnumber.value,
            ),


            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Botnav())),
                child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(15, 148, 251, 1),
                        Color.fromRGBO(200, 148, 251, 1),
                      ]
                  ),
                ),
                child: Center(
                  child: Text("Done", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
    ),
    ),
            )
          ],
        ),
      ),
      )
    );
  }
}


class DisplayP extends StatelessWidget {
  DisplayP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Align(alignment: Alignment.center,
                        child: Text("Patient Name:", style: TextStyle(color: Colors.blueAccent, fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
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
                  child: Text(textControllers.patientName.value.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Align(alignment: Alignment.center,
                        child: Text("Patient Email:", style: TextStyle(color: Colors.blueAccent, fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
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
                  child: Text(textControllers.patientEmail.value.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Align(alignment: Alignment.center,
                        child: Text("Patient Number:", style: TextStyle(color: Colors.blueAccent, fontSize: 5, fontWeight: FontWeight.bold),),
                      ),
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
                  child: Text(textControllers.patientNumber.value.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
                    const SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Align(alignment: Alignment.center,
                        child: Text("Relative Name:", style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
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
                  child: Text(textControllers.Rname.value.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Align(alignment: Alignment.center,
                        child: Text("Relative Number:", style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
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
                  child: Text(textControllers.Rnumber.value.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
      ]
    )
    )
    ),
    );
  }
}
