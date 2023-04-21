
import 'dart:convert';

import 'package:dio/src/response.dart';
import 'package:get/get.dart';
import 'package:zhihu_daily/utils/data_provider.dart';

import '../../entity/story.dart';

class ArticleController extends GetxController {

  Rx<Story> storiesObx = Story(id: 0, title: "", url: "", hint: "", images: []).obs;

  Future<Story> fetchData(int articleId) async {
    final myFetchedData = await DataProvider.getArticleDetail(articleId);
    return Story.fromJson(jsonDecode(myFetchedData.toString()));
  }

  Story handleFetchData(dynamic data) {

    var json = jsonDecode(data.toString());

    Story stories = Story(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        hint: json["hint"] == Null ? json["hint"] : '',
        images: json["images"],
        html: json["body"]
    );

    return stories;
  }

  @override
  void onInit() async {
    super.onInit();
    dynamic myFetchedData = await fetchData(Get.arguments);

    Story stories = handleFetchData(myFetchedData);
    storiesObx.value = stories;
  }
}