class Article {
  final String title;
  final String url;
  final String hint;
  final List<String> images;
  final int id;

  Article(this.title, this.url, this.hint, this.images, this.id);

  Article.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        url = json['url'],
        hint = json['hint'],
        images = json['images'],
        id = json['id'];

  Map<String, dynamic> toJson() =>
      {'title': title, 'url': url, 'hint': hint, 'images': images, 'id': id};
}
