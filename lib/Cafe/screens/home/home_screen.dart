import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_sample/Cafe/widgets/banner_widget.dart';
import 'package:recipe_sample/Cafe/widgets/today_menu_widget.dart';
import 'package:recipe_sample/Cafe/screens/menu/coffee_menu_screen.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuItems=[
      "New",
      "커피&음료",
      "아이스크림&빙수",
      "케이크",
    ];

    List<String> bannerItemUrl=[
      "assets/images/banner01.jpg",
      "assets/images/banner02.jpg",
    ];
    return DefaultTabController(
        length: menuItems.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('메뉴',
            style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            bottom: TabBar(
              tabs: List.generate(
              menuItems.length,
                      (index) => Tab(
                        text: menuItems[index],
                      )),
              unselectedLabelColor:Colors.black38 ,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  BannerWidget(bannerItemUrl: bannerItemUrl),
                  TodayMenuWidget(),
                ],
              ),
              CoffeeMenuScreen(),
              Center(
                child: Text('빙수아이스크림화면'),
              ),
              Center(
                child: Text('케이크 화면'),
              ),
            ],
          ),
        ));
  }
}
