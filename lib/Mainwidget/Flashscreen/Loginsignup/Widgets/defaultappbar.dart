import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Defaultappbar extends StatelessWidget {
  const Defaultappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:
        //  mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.start,
          //children: [
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                "Password Manager",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20),
              ),
            ),


    );
  }
}
