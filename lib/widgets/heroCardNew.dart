import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pickhero/model/models.dart';
import 'package:pickhero/pages/heroDetail.dart';

import 'HeroCardImageLoading.dart';

class HeroCardNew extends StatefulWidget {
  MyHero myHero;

  HeroCardNew(this.myHero);

  @override
  _HeroCardNewState createState() => _HeroCardNewState();
}

class _HeroCardNewState extends State<HeroCardNew> {
  bool isLoading = true;
  bool isStateChanged = false;

  bool isText = false;
  @override
  Widget build(BuildContext context) {
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
              Positioned.fill(child: heroImage()),
              //   heroImageOverlay(),
              heroName(),
            ],
          ),
        ),
      ),
    );
  }

  Widget heroImage() {
    return Stack(
      children: [
        Positioned.fill(
            child: Container(
          child: LoadingImage(widget.myHero.imageUrl, checkText),
        )),
      ],
    );
  }

  checkText() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      isText = true;
      if (mounted) {
        setState(() {});
      }
    });

    print("the istext value is $isText");
  }

  Widget heroName() {
    if (isText == true) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Text(widget.myHero.name,
            style: GoogleFonts.crimsonPro(fontSize: 20, color: Colors.white)),
      );
    } else {
      return SizedBox();
    }
  }

  Widget heroImageOverlay() {
    return Container(
      color: Color(0x00000000),
    );
  }
}
