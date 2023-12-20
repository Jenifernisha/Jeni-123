import 'package:epm/Mainwidget/Flashscreen/Loginsignup/Widgets/defaultappbar.dart';
import 'package:epm/screens/Homescreen.dart';
import 'package:epm/screens/masterpasswordscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:email_otp/email_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:email_auth/email_auth.dart';
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MaterialApp(
    home:  VerifyEmailPage();
  ));
}

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => VerifyEmailPageState();
}

class VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  Timer? timer;

  @override
  void initState();
   super.initState();

  isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

  if(!isEmailVerified){

  sendVerificationEmail();

  timer = Timer.periodic(
  Duration(seconds: 3),
  (_) => checkEmailVerified(),
  );
  }


  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future sendVerificationEmail() async {
  final user = FirebaseAuth.instance.currentUser!;
  await user.sendVerificationEmail();
}

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
  isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
  });
      if(!isEmailVerified){
        sendVerificationEmail();
  }
    });
if(isEmailVerified) timer?.cancel();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }



Future sendVerificationEmail() async {
try{
final user =FirebaseAuth.instance.currentUser!;
await user.sendVerificationEmail();
}
catch(e){
Utils.showSnackBar(e.toString());
}

Widget build(BuildContext context) => isEmailVerified ? Homescreen()
    : Scaffold(appBar:AppBar(title: Text('Verify Email'),
),
);
TextEditingController emailcontroller = TextEditingController();

      //  resizeToAvoidBottomInset: false,
        body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Defaultappbar(),
            SizedBox(
              height: 20,
            ),
            Text(
              'A Verification email has been sent to your email',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'We dont need much to get the ball rolling ',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(labelText: 'Email'),
            ),

            SizedBox(
              height: 40,),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Masterpasswordscreen(),
                        ),
                      );
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(fontSize: 17),
                    )),
              ],
            )
          ],
        ),

    );
  }

}