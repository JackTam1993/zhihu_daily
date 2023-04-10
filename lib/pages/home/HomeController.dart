
import 'dart:convert';

import 'package:get/get.dart';
import 'package:zhihu_daily/entity/story.dart';
import 'package:zhihu_daily/utils/data_provider.dart';

class HomeController extends GetxController {

  Future fetchData() async {
    var myFetchedData = await DataProvider.getLatestArticle();
    return myFetchedData;
  }

  List<Story> handleFetchData(dynamic data) {
    List<Story> stories = [];

    var json = jsonDecode(data.toString());
    List storiesList = json["stories"];

    for(var i = 0; i < storiesList.length; i++) {
      Story story = Story(
          title: storiesList[i]["title"],
          url: storiesList[i]["url"],
          hint: storiesList[i]["hint"],
          images: storiesList[i]["images"]
      );
      stories.add(story);
    }

    return stories;
  }

  var count = 0.obs;
  increment() => count++;

  RxList<Story> storiesObx = <Story>[].obs;

  @override
  void onInit() async {
    super.onInit();
    dynamic myFetchedData = await fetchData();

    List<Story> stories = handleFetchData(myFetchedData);
    storiesObx.value = stories;
  }
}