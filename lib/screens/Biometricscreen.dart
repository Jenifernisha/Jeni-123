import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Biometricscreen extends StatefulWidget {
  const Biometricscreen({super.key});

  @override
  State<Biometricscreen> createState() => _BiometricscreenState();
}

class _BiometricscreenState extends State<Biometricscreen> {
  @override
  Widget build(BuildContext context) {
    bool isdisabled = true;
    bool ischecked = false;
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    Widget childwidget() {
      return Container(
        width: mWidth,
        height: mHeight * 0.45,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Please agree to our Terms of Service and Privacy policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  StatefulBuilder(builder: (context, setState) {
                    return Checkbox(
                        value: ischecked,
                        checkColor: Colors.black,
                        onChanged: ((bool? value) {
                          setState(() {
                            ischecked = value!;
                          });
                        }));
                  }),
                  Column(
                    children: [
                      Text(
                        "I'd like to receive emails with tips and special",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(" offers for Dashlane",
                          style: TextStyle(fontSize: 16))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  StatefulBuilder(builder: (context, setState) {
                    return Checkbox(
                        value: ischecked,
                        checkColor: Colors.black,
                        onChanged: ((bool? value) {
                          setState(() {
                            ischecked = value!;
                          });
                        }));
                  }),
                  Column(
                    children: [
                      Text("I agree with the Terms of Service and",
                          style: TextStyle(fontSize: 16)),
                      Text("Privacy Policy", style: TextStyle(fontSize: 16))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Homescreen(),
                            ));
                      },
                      child: Text('I AGREE')),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Defaultappbar(),
            SizedBox(
              height: 40,
            ),
            Text(
              'Make EPM fast and easy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) {
                            return childwidget();
                          });
                    },
                    child: Text('CONTINUE')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
