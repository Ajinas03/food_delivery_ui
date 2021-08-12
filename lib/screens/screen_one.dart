import 'package:flutter/material.dart';
import 'package:machinetest_ui/screens/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
                  MaterialPageRoute(builder: (context) => ScreenTwo()));
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
          Container(
            child: ListTile(
              leading: Icon(
                Icons.pedal_bike,
              ),
              title: Text(
                "Now",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              subtitle: Text(
                "Current location",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                FloatingActionButton.extended(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    label: Text(
                      "Delivery",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  label: Text(
                    "Pick Up",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search",
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.menu)
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView(children: [
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(20, (int index) {
                          return Card(
                            color: Colors.grey[400],
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Text("Category \n #${index + 1}"),
                              ),
                            ),
                          );
                        }),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView(children: [
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(2, (int index) {
                          return Card(
                            color: Colors.grey[200],
                            child: Container(
                              width: 350,
                              height: 150,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 120),
                                    child: Text(
                                      "Covid 19 Delivery Notice",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(
              "Upto 25% Off",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Container(
                        height: 400,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(2, (int index) {
                            return Card(
                              color: Colors.grey[200],
                              child: Container(
                                width: 350,
                                height: 400,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/f.jpg"),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 170, left: 250),
                                      child: FloatingActionButton.extended(
                                          backgroundColor: Colors.white,
                                          onPressed: () {},
                                          label: Text(
                                            "30-50 \n min",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 210, left: 10),
                                      child: Text(
                                        "Restaurant name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 230,
                                      ),
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.star,
                                          color: Colors.black,
                                        ),
                                        title: Text(
                                            "4.5 Excellent(400+) chicken Hong Kong"),
                                        subtitle: Text("Chineese Asian"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 300, left: 10),
                                      child: Text("2km away \$5.00 delivery"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
