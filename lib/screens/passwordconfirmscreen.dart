import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/Biometricscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Confirmpassword extends StatefulWidget {
  const Confirmpassword({super.key});

  @override
  State<Confirmpassword> createState() => _ConfirmpasswordState();
}

class _ConfirmpasswordState extends State<Confirmpassword> {
  var _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Defaultappbar(),
            SizedBox(
              height: 17,
            ),
            Text(
              'Got it. Can you type it one more time ?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Just making sure you're happy with it",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: 'Create your Master password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: 'Type your Master password again',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Biometricscreen(),
                        ),
                      );}, child: Text('CONTINUE'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
