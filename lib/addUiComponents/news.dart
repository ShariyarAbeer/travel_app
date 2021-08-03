import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.height / 2 - 23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/images/image3.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.height / 2 - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15.5),
                        child: Text(
                          "Namitta Chora",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Lemonada",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15.5),
                        child: Text(
                          "Chattogram Leke, CA",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "OleoScript",
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.live_tv,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "1.6K",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "OleoScript",
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.tour,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "Tour",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "OleoScript",
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add_road_outlined,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "By Road",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "OleoScript",
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.height / 2 - 23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/images/image4.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height / 2 - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15.5),
                      child: Text(
                        "Pahari Chora",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lemonada",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15.5),
                      child: Text(
                        "Chattogram Balu Haat, CA",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "OleoScript",
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.live_tv,
                                    color: Colors.green,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "3.5K",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "OleoScript",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.tour,
                                    color: Colors.green,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "Tour",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "OleoScript",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.train,
                                    color: Colors.green,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "By Train",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "OleoScript",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
