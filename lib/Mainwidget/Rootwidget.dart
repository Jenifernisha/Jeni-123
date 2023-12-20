import 'package:epm/screens/flashscreen.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Rootwidget extends StatefulWidget {
  const Rootwidget({super.key});

  @override
  State<Rootwidget> createState() => _RootwidgetState();
}

class _RootwidgetState extends State<Rootwidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flashscreen(),
    );
  }
}
