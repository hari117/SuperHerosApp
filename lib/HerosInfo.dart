import 'package:flutter/material.dart';

class HeroInformationPage extends StatefulWidget {
  @override
  _HeroInformationPageState createState() => _HeroInformationPageState();
}

class _HeroInformationPageState extends State<HeroInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onDoubleTap: ()
        {
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.yellow,
          alignment: Alignment.topCenter,
          child: Hero(
            tag: "hari",
            child: Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
            ),
          ),
        ),
      ),
    );
  }
}
