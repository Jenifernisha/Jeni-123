import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/passwordconfirmscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Masterpasswordscreen extends StatefulWidget {
  const Masterpasswordscreen({super.key});

  @override
  State<Masterpasswordscreen> createState() => _MasterpasswordscreenState();
}

class _MasterpasswordscreenState extends State<Masterpasswordscreen> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Defaultappbar(),
          SizedBox(
            height: 17,
          ),
          Text(
            '...and a Master Password. The one to rule them all.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text('NEED HELP? SEE OUR TIPS'),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
              labelText: 'Create your Master password',
              helperText:
                  'Note: For your security, we dont store your Master Password.',
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
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Confirmpassword(),
                        ),
                      );
              }, child: Text('CONTINUE',style: TextStyle(fontSize: 17),))
            ],
          )
        ]),
      ),
    );
  }
}
