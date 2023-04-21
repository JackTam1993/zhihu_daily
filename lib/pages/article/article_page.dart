import 'package:flutter/material.dart';
import 'package:zhihu_daily/pages/article/article_controller.dart';
import 'package:get/get.dart';

import '../../entity/story.dart';

class ArticlePage extends GetView<ArticleController> {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Container(
        child: FutureBuilder<Story>(
          future: controller.fetchData(Get.arguments),
          builder: (BuildContext context, AsyncSnapshot<Story> snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if(snapshot.hasData) {
              return Column(
                children: <Widget>[
                  Hero(
                      tag: snapshot.data!.id,
                      child: Image.network(snapshot.data!.images[0])
                  ),
                  Text(snapshot.data!.title),
                ],
              );
            } else {
              return new Text('加载中');
            }
          },
        )
      ),
    );
  }}