import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.hero.name}",
          style: TextFonts.headingText,
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: InkWell(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    // color: Colors.yellow,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.hero.lg),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.red,
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
              secondHalfScreen(),
            ],
          ),
        ),
      ),
    );
  }

  secondHalfScreen() {
    return Container(
      color: Colors.indigo,
      //   child: SingleChildScrollView(),
      child: Container(
        width: MediaQuery.of(context).size.width,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'ID :',
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.id} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.strength} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.power} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.intelligence} ',
                                    style: TextFonts.normalText,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'NAME :',
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.name} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.speed} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.combat} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.durability} ',
                                    style: TextFonts.normalText,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'GENDER :',
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.gender} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.eyeColor} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.hairColor} ',
                                    style: TextFonts.normalText,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'HEIGHT :',
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.height} ',
                                    style: TextFonts.normalText,
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
                                    style: TextFonts.normalText,
                                  ),
                                  TextSpan(
                                    text: ' ${widget.hero.weight} ',
                                    style: TextFonts.normalText,
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
                      style: TextFonts.normalText,
                    ),
                    TextSpan(
                      text: ' ${widget.hero.fullName} ',
                      style: TextFonts.normalText,
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
                      style: TextFonts.normalText,
                    ),
                    TextSpan(
                      text: ' ${widget.hero.fristapper} ',
                      style: TextFonts.normalText,
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
                      style: TextFonts.normalText,
                    ),
                    TextSpan(
                      text: ' ${widget.hero.publisher} ',
                      style: TextFonts.normalText,
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
                      style: TextFonts.normalText,
                    ),
                    TextSpan(
                      text: ' ${widget.hero.groupAffiliation} ',
                      style: TextFonts.normalText,
                    ),
                  ],
                ),
              ),
              allocateheightSize(),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    textSpan('RELATIVES :'),
                    textSpan(' ${widget.hero.relatives} ')
                  ],
                ),
              ),
              allocateheightSize(),
            ],
          ),
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
      style: TextFonts.headingText,
    );
  }

  TextSpan textSpan(String text) {
    return TextSpan(
      text: text,
      style: TextFonts.normalText,
    );
  }
}
