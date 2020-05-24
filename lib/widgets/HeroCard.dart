import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pickhero/model/models.dart';
import 'package:pickhero/pages/HeroDetail.dart';

import 'LoadingImage.dart';

class HeroCard extends StatelessWidget {
  MyHero myHero;

  HeroCard(this.myHero);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            MaterialPageRoute route = new MaterialPageRoute(
                builder: (context) => HeroInformationPage(myHero));
            Navigator.push(context, route);
          },
          child: Stack(
            children: [
              heroImage(),
              heroName(),
            ],
          ),
        ),
      ),
    );
  }

  Widget heroImage() {
    return Positioned.fill(
        child: Container(
      child: LoadingImage(myHero.imageUrl),
    ));
  }

  Widget heroName() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(myHero.name,
          style: GoogleFonts.crimsonPro(fontSize: 24, color: Colors.white)),
    );
  }
}
