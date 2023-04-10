
import 'dart:ffi';

class Story {
  String title;
  String url;
  String hint;
  List images;

  Story({
    required this.title,
    required this.url,
    required this.hint,
    required this.images,
  });

  Story.fromJson(Map<String, dynamic> json) :
        title = json['recipeId'],
        url = json['recipeCode'],
        hint = json['recipeName'],
        images = json['recipeType'];

  Map<String, dynamic> toJson() {
    return {
      'recipeId': title,
      'recipeCode': url,
      'recipeName': hint,
      'recipeType': images
    };
  }
}
