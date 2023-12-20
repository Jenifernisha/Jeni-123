import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/createaccountscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class LoginwithemailScreen extends StatefulWidget {
  const LoginwithemailScreen({super.key});

  @override
  State<LoginwithemailScreen> createState() => _LoginwithemailScreenState();
}

class _LoginwithemailScreenState extends State<LoginwithemailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

    body: SingleChildScrollView(
        reverse: true,
        child: Column(
        children: [
        Defaultappbar(),
    SizedBox(
    height: 70,
    ),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
    ),
    ),
    SizedBox(
    height: 300,
    ),
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
         TextButton(
             onPressed: () {
                   Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Createaccountscreen()));
    },
    child: Text(
    'CREATE ACCOUNT',
    style: TextStyle(fontSize: 18),
    ),
    ),
    SizedBox(
    width: 10,
    ),
    ElevatedButton(
    onPressed: () {},
    child: Text(
    'CONTINUE',
    style: TextStyle(fontSize: 18),
    ),
    )
    ],
    ),
    )
    ],
    )),
    );
  }
}