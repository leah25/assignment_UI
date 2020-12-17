import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  Carousel() : super();

  final String title = "Carousel";

  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = ['images/img2.jpg', 'images/img3.jpg', 'images/img4.jpg'];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 900.0,
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300.0,
                  initialPage: 0,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  reverse: false,
                  enableInfiniteScroll: false,
                  autoPlayInterval: Duration(seconds: 2),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.orange : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
