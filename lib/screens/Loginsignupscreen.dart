import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/Introslider.dart';
import 'package:epm/screens/loginwithemailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intro_slider/intro_slider.dart';



class Loginsignupscreen extends StatefulWidget {
  const Loginsignupscreen({super.key});

  @override
  State<Loginsignupscreen> createState() => _LoginsignupscreenState();
}

class _LoginsignupscreenState extends State<Loginsignupscreen> {
  @override
  Widget build(BuildContext context) {
    // List<Slide> slides = [];
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Introsliderr(),
            Padding(
              padding: EdgeInsets.only(bottom: 10, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginwithemailScreen()));
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
