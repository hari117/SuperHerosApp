import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pickhero/MAPING.dart';

class SuperHeroClient {
  Dio dio = Dio();
  String imgURL;

  getHeroImage() {
    List<Image> list = List();
    for (int i = 1; i <= 50; i++) {
      Future<Response> futureImage =
          dio.get("https://superheroapi.com/api/1141832662859507/$i/image");
      Future<HeroImages> imageData = futureImage.then((value) {

        print("image future resolved: list size: ${list.length}");
      });
    }
    HeroImages heroImages = HeroImages(list);
    print("returning herors: list size: ${list.length}");
    return heroImages;
  }
}
