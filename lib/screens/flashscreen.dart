import 'dart:async';

import 'package:epm/screens/Loginsignupscreen.dart';
import 'package:epm/screens/createaccountscreen.dart';
import 'package:epm/screens/loginwithemailscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/asset_bundle.dart';

class Flashscreen extends StatefulWidget {
  Flashscreen({super.key});

  @override
  State<Flashscreen> createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginwithemailScreen()));
    });
    // Timer(Duration(seconds: 2), (() {
    //
    // }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
                'D:/Passwordmanager-main/lib/Mainwidget/Flashscreen/images/epmtestlogo.jpg')));
  }
}

// imagevalidation(BuildContext context) {
//   try {
//     var image = Center(
//         child: Image.asset(
//             'D:/Trustybytes/epm/lib/Mainwidget/Flashscreen/images/epmtestlogo.jpg'));

//     if (image != null) {
//       return image;
//     } else {
//       return Text("Couldnot find asset ");
//     }
//   } catch (e) {
//     print(e);
//   }
// }
