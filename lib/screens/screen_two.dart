//@dart=2.9

import 'package:flutter/material.dart';
import 'package:machinetest_ui/screens/screen_one.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';

class ScreenTwo extends StatefulWidget {
  // const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "press arrow to goto next page",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenOne()));
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            trailing: Icon(Icons.calendar_today, color: Colors.black),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Events",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Container(
            child: HorizontalCalendar(
              date: DateTime.now().add(Duration(days: 1)),
              textColor: Colors.black45,
              backgroundColor: Colors.white,
              selectedColor: Colors.grey,
              onDateSelected: (date) => print(
                date.toString(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 400,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/n.jpg",
                        ),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        color: Colors.grey[300]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 310),
                          child: Text("Events",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 119),
                          child: Text("National Health Movement",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 340, left: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/p1.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 340, left: 60),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/p2.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 340, left: 120),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400]),
                  child: Center(
                      child: Text(
                    "+12",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 340, left: 270),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400]),
                  child: Center(
                      child: Text(
                    " Join ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 400,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                        ), color: Colors.grey[300]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 210),
                        child: Text(
                          "Nearby Events",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        title: Text("110 Chan Tin Lau street, Hong Kong"),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/m.png",
                        ),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
