import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_assignment/widgets/carousel.dart';
import 'package:interview_assignment/widgets/drop_down.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double widthSize = 380.0;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 550,
                    width: widthSize,
                    child: Image.asset('images/img1.jpg', fit: BoxFit.cover),
                  ),
                  Container(
                    height: 550,
                    width: widthSize,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text('David Gohn Condos',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5.0),
                                    Text(' 16 David Gohn Circle - Richard Hill',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Select a Unit',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 100,
                          color: Colors.transparent,
                          width: widthSize,
                          child: DropDown(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: widthSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'The best way to live in downtown',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Center(
                        child: ExpandableText(
                          'David Gohn, chairman of the board and CEO of West Plains Bank, was honored with the Humanitarian of the Year Award during the West Plains Chamber of Commerce banquet Jan. 22 at the West Plains Civic Center but was unable to attend to receive it. On his behalf it was accepted by his son, David Matthew Gohn, the bank’s president and chief operating officer.',
                          expandText: 'show more',
                          collapseText: 'show less',
                          maxLines: 3,
                          linkColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: widthSize,
                child: Carousel(),
              ),
              SizedBox(height: 5.0),
              Center(
                child: Text(
                  'Amenities',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: widthSize,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 200,
                      width: 150,
                      child: ListView.builder(
                          itemCount: Amenities1.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      '* ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text('${Amenities1[index]}'),
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      child: ListView.builder(
                          itemCount: Amenities2.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      '* ',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text('${Amenities2[index]}'),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Management Reviews',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 200,
                width: widthSize,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 180,
                        width: widthSize,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Text(
                                  'Customizing an Evaluation Form for your organization is a breeze with our drag-and-drop Form Builder.Customizing an Evaluation Form for your organization is a breeze with our drag-and-drop Form Builder. No coding necessary — just drag and drop as many form fields, survey questions, rating scales, and images as you see fit. '),
                              SizedBox(height: 10),
                              Container(
                                height: 80,
                                width: widthSize,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Row(children: [
                                        CircleAvatar(
                                          radius: 20.0,
                                          child: Image.asset(
                                            'images/p1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Sarah Peterson'),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 18,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ]),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Text('Nov 02'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 300,
                  width: widthSize,
                  child: Image.asset(
                    'images/p2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 300,
                        child: RaisedButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            'Write a Management Review',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Read More Reviews',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 70.0),
            ],
          ),
        ),
      ),
    );
  }

  List<String> Amenities1 = [
    'Sophisicated Ameneties',
    '24/7 Coinciarge',
    'HighSpeed Elevators',
    '5th Floor Gym',
    'Party Room',
  ];
  List<String> Amenities2 = [
    'Sophisicated Ameneties',
    '24/7 Coinciarge',
    'HighSpeed Elevators',
    '5th Floor Gym',
    'Party Room',
  ];
}
