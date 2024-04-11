

import 'package:flutter/material.dart';
import 'package:mediconnect/pages/checkdisease.dart';
import 'package:mediconnect/pages/livestatus.dart';
import 'package:mediconnect/pages/aboutpatient.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Patientname'),
              accountEmail: Text('patient@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/userempty.png',
                  width: 90,
                  height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage('assets/images/abstractnature.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.bluetooth),
            title: Text('About Patient'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayP())),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Bluetooth'),
            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => bluetoothC())),
          ),
          ListTile(
            leading: Icon(Icons.bloodtype_outlined),
            title: Text('Live Status'),
            onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => LiveStatus())) ,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Check Disease'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CheckDisease())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Exit'),
            onTap: () => print('fav'),
          ),
        ],
      )
    );
  }
}
