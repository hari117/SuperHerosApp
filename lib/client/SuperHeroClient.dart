import 'package:dio/dio.dart';
import 'package:pickhero/model/models.dart';

class SuperHeroClient {
  Dio dio = Dio();
  String imgURL =
      "https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/all.json";

  Future<List<MyHero>> getHeroDetails() {
    Future<Response> responceUrl = dio.get(imgURL);
    Future<List<MyHero>> finalData = responceUrl.then((value) {
      List<dynamic> listOfMap = value.data;
      Set<String> publishers = Set();
      Map<String, int> countMap = Map();
      for (Map<dynamic, dynamic> heroMap in listOfMap) {
        String publisher = heroMap["biography"]["publisher"];
        publishers.add(publisher);

        int count = countMap[publisher];
        if (count == null) {
          count = 0;
        }
        count++;
        countMap[publisher] = count;
      }

      List<MyHero> heros = MyHero.fromJson(listOfMap);
      return heros;
    });

    return finalData;
  }
}
