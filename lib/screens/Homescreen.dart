// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    //Scaffold 
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('ADD NEW'),
        icon: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text('Soumya'),
                accountEmail: Text('sr2601225@gmail.com'),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "S",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvat
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification center'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Generator'),
            ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text('Collection'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            )
          ],
        ),
      ),
      appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.notifications),
            )
          ],
          backgroundColor: Colors.grey,
          elevation: 0,
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          )),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                hintText: 'Find an item , tool or setting',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
