import 'package:flutter/cupertino.dart';

class MyHero {
  int id;
  String name;

//images
  String imageUrl;

  //power Stats
  int strength;
  int speed;
  int power;
  int combat;
  int intelligence;
  int durability;

  //appearance
  String gender;
  String eyeColor;
  String hairColor;
  String height;
  String weight;

  //biography
  String fullName;
  String fristapper;
  String publisher;

  //connections
  String groupAffiliation;
  String relatives;

  //bigImage
  String lg;

  static List<MyHero> fromJson(List<dynamic> listOfObjects) {
    List<MyHero> list = List();
    for (Map<dynamic, dynamic> heroMap in listOfObjects) {
      MyHero hero = MyHero();

      hero.id = heroMap['id'];
      hero.name = heroMap['name'];

      //images
      Map<String, dynamic> imgUrl = heroMap['images'];
      hero.imageUrl = imgUrl['sm'];

      //power Stats
      Map<String, dynamic> powerStats = heroMap['powerstats'];
      hero.intelligence = powerStats['intelligence'];
      hero.speed = powerStats['speed'];
      hero.power = powerStats['power'];
      hero.combat = powerStats['combat'];
      hero.strength = powerStats['strength'];
      hero.durability = powerStats['durability'];

      //appearance
      Map<dynamic, dynamic> appearance = heroMap['appearance'];
      hero.gender = appearance['gender'];
      hero.eyeColor = appearance['eyeColor'];
      hero.hairColor = appearance['hairColor'];
      List<dynamic> height = appearance['height'];
      hero.height = height[0];
      List<dynamic> weight = appearance['weight'];
      hero.weight = weight[1];

      //biography
      Map<String, dynamic> bio = heroMap['biography'];
      hero.fullName = bio['fullName'];
      hero.fristapper = bio['firstAppearance'];
      hero.publisher = bio['publisher'];

      //connections
      Map<String, dynamic> con = heroMap['connections'];
      hero.groupAffiliation = con['groupAffiliation'];
      hero.relatives = con['relatives'];
      Map<String, dynamic> img = heroMap['images'];
      hero.lg = img['lg'];

      list.add(hero);
    }
    return list;
  }
}
