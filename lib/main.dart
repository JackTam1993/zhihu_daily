import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zhihu_daily/pages/AppPage.dart';
import 'package:zhihu_daily/pages/home/Home.dart';
import 'package:zhihu_daily/pages/home/HomeBinding.dart';

void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fade,
        builder: (context, child) => Scaffold(
          body: GestureDetector(
            onTap: () {

            },
            child: child,
          )
        ),
        initialRoute: '/',
        initialBinding: HomeBinding(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: AppPage.pages,
        home: const Home(),
      )
  );
}
