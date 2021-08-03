import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300.0,
                      color: Colors.amber[50],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(15.0),
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15.0),
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search Place",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                            autofocus: false,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Colors.orangeAccent,
                                    style: BorderStyle.solid,
                                    width: 3.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "POPULAR PLACES",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Lemonada"),
                                    ),
                                    Text(
                                      "THIS WEEK",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Lemonada"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),

                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.only(
                            top: 15.0,
                            left: 15.0,
                          ),
                          height: 150.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return _placeList(
                                "assets/images/image3.jpg",
                                "Maldib",
                                "Maldib,LA",
                              );
                            },
                            itemCount: 5,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 15.0),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sep 7',
                                  style: TextStyle(
                                      fontFamily: "Lemonada",
                                      fontSize: 15.0,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Today",
                                  style: TextStyle(
                                      fontFamily: "Lemonada",
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ))

                        // _placeList(
                        //   "assets/images/image1.png",
                        //   "Maldib",
                        //   "Maldib,LA",
                        // )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blueAccent,
                      image: DecorationImage(
                          // image: AssetImage(url),
                          image: AssetImage("assets/images/image4.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 50,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BEST OF ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: "OleoScript"),
                        ),
                        Text(
                          "THE DAY",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              fontFamily: "OleoScript"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          width: 130.0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Colors.orangeAccent,
                                  style: BorderStyle.solid,
                                  width: 3.0),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

// assets/images/image1.png
  Widget _placeList(String url, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        elevation: 10.0,
        // shadowColor: ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 127.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0)),
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage(url),
                        // image: AssetImage("assets/images/image1.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Text(
                            title,
                            // "Maldib",
                            style: TextStyle(
                                fontFamily: "Lemonada",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Text(
                            subtitle,
                            // "Maldib,LA",
                            style: TextStyle(
                                fontFamily: "Lemonada",
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
