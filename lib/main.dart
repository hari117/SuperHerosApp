import 'package:flutter/material.dart';
import 'package:pickhero/pages/home.dart';

void main() {
  runApp(Heros());
}

class Heros extends StatefulWidget {
  @override
  _HerosState createState() => _HerosState();
}

class _HerosState extends State<Heros> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
