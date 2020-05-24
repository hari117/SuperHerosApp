import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:pickhero/client/SuperHeroClient.dart';
import 'package:pickhero/model/models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pickhero/widgets/HeroCard.dart';
import 'package:random_color/random_color.dart';
import 'package:loading/loading.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SuperHeroClient _superHeroClient = SuperHeroClient();
  RandomColor _randomColor = RandomColor();
  List<MyHero> heroList;
  bool isLoading = true;
  bool isError;
  int total;

  @override
  void initState() {
    super.initState();
    setState(() {});
    update();
  }

  update() {
    isLoading = true;
    _superHeroClient.getHeroDetails().then((heroList) {
      isLoading = false;
      total = heroList.length;
      setState(() {});
      this.heroList = heroList;
    }).catchError((onError) {});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
          iconSize: 30,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            color: Colors.white,
            onPressed: () {
              update();
            },
            iconSize: 30,
          ),
        ],
        backgroundColor: Colors.indigo,
        bottomOpacity: 3,
        title: Text(
          "SUPER HEROS",
          style: GoogleFonts.oswald(fontSize: 30, letterSpacing: 3),
        ),
        centerTitle: true,
      ),
      body: checkData(),
    );
  }

  checkData() {
    if (isLoading == true)
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Loading(
              indicator: BallPulseIndicator(),
              size: 100.0,
              color: Colors.white),
        ),
      );
    if (isLoading == false) return gridView();
  }

  gridView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 20.0,
        ),
        itemCount: total,
        itemBuilder: (_, index) {
          //  print("builidng item: $index");
          MyHero hero = heroList[index];
          return HeroCard(hero);
        },
      ),
    );
  }
}
