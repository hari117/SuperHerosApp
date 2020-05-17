import 'package:flutter/material.dart';
import 'package:pickhero/model/models.dart';
import 'package:pickhero/pages/heroDetail.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroCard extends StatefulWidget {
  MyHero myHero;

  HeroCard(this.myHero);

  @override
  _HeroCardState createState() => _HeroCardState();
}

class _HeroCardState extends State<HeroCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MaterialPageRoute route = new MaterialPageRoute(
            builder: (context) => HeroInformationPage(widget.myHero));
        Navigator.push(context, route);
      },
      child: old(),
    );
  }

  Widget old() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(widget.myHero.imageUrl),
        fit: BoxFit.cover,
      )),
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      alignment: Alignment.bottomCenter,
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.indigo,
                    Color(0xaa3F51B5),
                    Color(0x00000000),
                    Color(0x00000000),
                  ],
                  stops: [
                    0,
                    0.2,
                    0.3,
                    1
                  ]),
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(2)),
          width: MediaQuery.of(context).size.width / 2,
          height: 20,
          child: Center(
              child: Text(widget.myHero.name,
                  style: GoogleFonts.crimsonPro(
                      fontSize: 20, color: Colors.white)))),
    );
  }

  Widget image() {
    return Image.network(widget.myHero.imageUrl);
  }
}
