import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gurutamu_mart/components/home/category_component.dart';
import 'package:gurutamu_mart/components/home/search_component.dart';
import 'package:gurutamu_mart/components/home/user_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _category = [
    {"title": "Voucher", "icon": Icons.discount, "color": Colors.orangeAccent},
    {"title": "Dessert", "icon": Icons.icecream, "color": Colors.blueAccent},
    {
      "title": "Fast Food",
      "icon": Icons.rice_bowl,
      "color": Colors.yellowAccent
    },
    {"title": "Diet Food", "icon": Icons.grass, "color": Colors.greenAccent},
  ];

  /* List<Map<String, dynamic>> _discount = [
    {
      "title": "Seafood",
      "distance": 2,
      "estimationTime": 12,
      "rating": 4,
      "sold": 100
    },
    {
      "title": "Seafood",
      "distance": 5,
      "estimationTime": 15,
      "rating": 4.5,
      "sold": 120
    },
    {
      "title": "Seafood",
      "distance": 3,
      "estimationTime": 10,
      "rating": 4.2,
      "sold": 90
    },
    {
      "title": "Seafood",
      "distance": 8,
      "estimationTime": 20,
      "rating": 4.7,
      "sold": 150
    },
    {
      "title": "Seafood",
      "distance": 1,
      "estimationTime": 8,
      "rating": 4.8,
      "sold": 200
    },
    {
      "title": "Seafood",
      "distance": 6,
      "estimationTime": 18,
      "rating": 4.3,
      "sold": 110
    },
    {
      "title": "Seafood",
      "distance": 4,
      "estimationTime": 14,
      "rating": 4.6,
      "sold": 130
    },
    {
      "title": "Seafood",
      "distance": 7,
      "estimationTime": 16,
      "rating": 4.4,
      "sold": 140
    },
    {
      "title": "Seafood",
      "distance": 9,
      "estimationTime": 22,
      "rating": 4.9,
      "sold": 180
    },
    {
      "title": "Seafood",
      "distance": 10,
      "estimationTime": 24,
      "rating": 5,
      "sold": 220
    }
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserProfile(),
              SearchComponent(),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(
                          "https://picsum.photos/id/$i/800/400",
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              // CategoryComponent()
              Container(
                height: MediaQuery.sizeOf(context).height / 6,
                alignment: Alignment.center,
                child: ListView.builder(
                    itemCount: _category.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> category = _category[index];
                      return CategoryComponent(
                          color: category['color'],
                          icon: category['icon'],
                          title: category['title']);
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hottest discount",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ]),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height / 2,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => context.push("/details"),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 18),
                              child: Row(children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  padding: EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://picsum.photos/seed/picsum/200/200",
                                              scale: 1))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "31 min \u2022 12 min",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "Sushi rokunde sone #00${index + 1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 14),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.yellowAccent,
                                        ),
                                        Text("4.8 \u2022 255 sold"),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
