import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pickhero/model/fontFile.dart';
import 'package:pickhero/model/models.dart';

class HeroInformationPage extends StatefulWidget {
  MyHero hero;

  HeroInformationPage(this.hero) {
    print("HeroInformationPage: $hero");
  }

  @override
  _HeroInformationPageState createState() => _HeroInformationPageState();
}

class _HeroInformationPageState extends State<HeroInformationPage> {
  TextFonts textFonts = TextFonts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.hero.name}",
          style: textFonts.headingText,
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: InkWell(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    // color: Colors.yellow,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.hero.lg),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
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
                            0.1,
                            0.3,
                            1
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
                //   child: SingleChildScrollView(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          allocateheightSize(),
                          buildTitles("Hero Details"),

                          allocateheightSize(),
                          Container(
                            width: MediaQuery.of(context).size.width,

                            //   color: Colors.indigo,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    //       color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'ID :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.id} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'STREANGTH :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${widget.hero.strength} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'POWER :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.power} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'intelligence :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${widget.hero.intelligence} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    //      color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'NAME :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.name} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'SPEED :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.speed} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'COMBAT :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.combat} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'DURABILITY :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${widget.hero.durability} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          buildTitles("Appearance"),
                          allocateheightSize(),
                          //appearance
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 109,
                            //   color: Colors.black,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    //     color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'GENDER :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.gender} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'EYECOLOR :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${widget.hero.eyeColor} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'HAIRCOLOR :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${widget.hero.hairColor} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    //    color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'HEIGHT :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.height} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'WEIGHT :',
                                                style: textFonts.normalText,
                                              ),
                                              TextSpan(
                                                text: ' ${widget.hero.weight} ',
                                                style: textFonts.normalText,
                                              ),
                                            ],
                                          ),
                                        ),
                                        allocateheightSize(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          buildTitles("BIOGRAPHY"),
                          allocateheightSize(),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'FULLNAME :',
                                  style: textFonts.normalText,
                                ),
                                TextSpan(
                                  text: ' ${widget.hero.fullName} ',
                                  style: textFonts.normalText,
                                ),
                              ],
                            ),
                          ),
                          allocateheightSize(),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'FIRSTAPPEARANCE :',
                                  style: textFonts.normalText,
                                ),
                                TextSpan(
                                  text: ' ${widget.hero.fristapper} ',
                                  style: textFonts.normalText,
                                ),
                              ],
                            ),
                          ),
                          allocateheightSize(),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'PUBLISHER :',
                                  style: textFonts.normalText,
                                ),
                                TextSpan(
                                  text: ' ${widget.hero.publisher} ',
                                  style: textFonts.normalText,
                                ),
                              ],
                            ),
                          ),
                          allocateheightSize(),
                          buildTitles("CONNECTIONS"),

                          allocateheightSize(),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'GROUP AFFILIATION :',
                                  style: textFonts.normalText,
                                ),
                                TextSpan(
                                  text: ' ${widget.hero.groupAffiliation} ',
                                  style: textFonts.normalText,
                                ),
                              ],
                            ),
                          ),
                          allocateheightSize(),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'RELATIVES :',
                                  style: textFonts.normalText,
                                ),
                                TextSpan(
                                  text: ' ${widget.hero.relatives} ',
                                  style: textFonts.normalText,
                                ),
                              ],
                            ),
                          ),
                          allocateheightSize(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  allocateheightSize() => SizedBox(
        height: 20,
      );

  buildTitles(String Name) {
    return Text(
      "$Name",
      style: textFonts.headingText,
    );
  }
}
