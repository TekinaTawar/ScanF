import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

class IntoScreen extends StatefulWidget {
  @override
  _IntoScreenState createState() => _IntoScreenState();
}

class _IntoScreenState extends State<IntoScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
          title: "ERASER",
          description:
              "Allow miles wound place the leave had. To sitting subject no improve studied limited",
          styleDescription: TextStyle(color: Colors.black),
          styleTitle: TextStyle(color: Colors.black)),
    );
    slides.add(
      new Slide(
          title: "PENCIL",
          description:
              "Ye indulgence unreserved connection alteration appearance",
          styleDescription: TextStyle(color: Colors.black),
          styleTitle: TextStyle(color: Colors.black)),
    );
    slides.add(
      new Slide(
          title: "RULER",
          description:
              "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
          styleTitle: TextStyle(color: Colors.black),
          styleDescription: TextStyle(color: Colors.black),
          backgroundColor: Colors.transparent),
    );
  }

  void onDonePress() {
    // Do what you want
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(127, 0, 255, 1),
          Colors.indigo,
          Colors.blue,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: new IntroSlider(
        slides: this.slides,
        onDonePress: this.onDonePress,
        //backgroundColorAllSlides: Colors.transparent,
        colorDoneBtn: Colors.black,
        colorPrevBtn: Colors.black,
        colorSkipBtn: Colors.black,
      ),
    );
  }
}
