import 'package:flutter/material.dart';
import 'HerosInfo.dart';
import 'SuperHeroClient.dart';
class UiPart extends StatefulWidget {
  @override
  _UiPartState createState() => _UiPartState();
}

class _UiPartState extends State<UiPart> {
  SuperHeroClient _superHeroClient=SuperHeroClient();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _superHeroClient.getHeroImage();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SUPER HEROS"),
          centerTitle: true,
        ),
        body:  bodyPart());
  }


  bodyPart()
  {
    return Row(
      children: [
        Hero(
          tag: "hari",
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => HeroInformationPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 200,
              color: Colors.red,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text("heroWidget"),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 200,
          color: Colors.cyan,
        ),
      ],
    );
  }
}
