

import 'dart:convert';

class Story {
  int id;
  String title;
  String url;
  String hint;
  List images;
  String html;

  Story({
    required this.id,
    required this.title,
    required this.url,
    required this.images,
    this.hint = '',
    this.html = ''
  });

  Story.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        title = json['title'],
        url = json['url'],
        hint = json.containsKey('hint') ? json['hint'] : '',
        images = json['images'],
        html = json['body'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'recipeId': title,
      'recipeCode': url,
      'recipeName': hint,
      'recipeType': images,
      'html': html
    };
  }
}
