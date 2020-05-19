import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pickhero/model/models.dart';
import 'package:pickhero/pages/heroDetail.dart';

class HeroCardNew extends StatefulWidget {
  MyHero myHero;

  HeroCardNew(this.myHero);

  @override
  _HeroCardNewState createState() => _HeroCardNewState();
}

class _HeroCardNewState extends State<HeroCardNew> {
  bool isLoading = true;
  bool isStateChanged = false;

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
              Container(color: Colors.red),
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
    return Stack(
      children: [
        loader(),
        Positioned.fill(
            child: Container(
          child: Opacity(
            opacity: isLoading ? 0 : 1,
            child: Image.network(
              widget.myHero.imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: _imageLoaded,
            ),
          ),
        )),
      ],
    );
  }

  loader() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _imageLoaded(_, Widget child, ImageChunkEvent progress) {
    if (progress == null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (isStateChanged == false) {
          if (super.mounted) {
            setState(() {});
            isStateChanged = true;
          }
        }
      });
      isLoading = false;
      print("Changing is loading to false");
      return child;
    }
    return SizedBox();
  }

  Widget heroImageOverlay() {
    return Container(
      color: Color(0x00000000),
    );
  }

  Widget heroName() {
    if (isLoading == false) {
      print("text hiding: $isLoading");
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
    } else {
      return SizedBox();
    }
  }
}
