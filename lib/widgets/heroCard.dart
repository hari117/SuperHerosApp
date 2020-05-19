import 'package:flutter/material.dart';
import 'package:pickhero/model/loadingImage.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return old();
  }

  Widget old() {
    return FractionallySizedBox(
      widthFactor: 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            MaterialPageRoute route = new MaterialPageRoute(
                builder: (context) => HeroInformationPage(widget.myHero));
            Navigator.push(context, route);
          },
          child: Stack(
            children: [
              Container(
                color: Colors.red,
              ),
              Positioned.fill(child: heroImage()),
              heroImageOverlay(),
              heroName(),
            ],
          ),
        ),
      ),
    );
  }

  Widget heroImage() {
    return Container(
      child: LoadingImage(widget.myHero.imageUrl),
    );
  }

  Widget heroImageOverlay() {
    return Container(
      color: Color(0x00000000),
    );
  }

  Widget image() {
    return Image.network(widget.myHero.imageUrl);
  }

  //not hero name
  Widget heroName() {
    return Container(
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
            stops: [0, 0.5, 0.7, 1],
          ),
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(1)),
      height: 20,
      alignment: Alignment.bottomCenter,
      child: Text(
        widget.myHero.name,
        style: GoogleFonts.crimsonPro(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
