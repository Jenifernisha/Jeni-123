import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intro_slider/intro_slider.dart';

class Introsliderr extends StatefulWidget {
  const Introsliderr({super.key});

  @override
  State<Introsliderr> createState() => _IntrosliderrState();
}

class _IntrosliderrState extends State<Introsliderr> {
  List<Slide> slides = [];

  void initstate() {
    super.initState();
    print('initstate going');
    slides.add(Slide(
        description: "The ap that makes the internet easier",
        pathImage: 'lib/Mainwidget/Flashscreen/images/epmtestlogo.jpg'));
    slides.add(Slide(
        description: "The ap that makes the internet easier",
        pathImage:
            'D:/Trustybytes/epm/lib/Mainwidget/Flashscreen/images/epmtestlogo.jpg'));
    slides.add(Slide(
        description: "The ap that makes the internet easier",
        pathImage:
            'D:/Trustybytes/epm/lib/Mainwidget/Flashscreen/images/epmtestlogo.jpg'));
  }

  List<Widget> renderListtabs() {
    print('--------------');
    List<Widget> tabs = List.empty();
    print(slides.length);
    for (int i = 0; i < slides.length; i++) {
      Slide currentslide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 100, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.asset(
                  currentslide.pathImage!,
                  matchTextDirection: true,
                  height: 60,
                ),
              )
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    print(slides);
    return SingleChildScrollView(
        child: Container(
      height: 600,
      color: Colors.grey,
    ));
  }
}


