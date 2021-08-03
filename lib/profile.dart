import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          ],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "assets/images/pngegg.png",
                  child: Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62.5),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/pngegg.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mask Stewart",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "StyleScript",
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(left: 2.0),
                            icon: Icon(Icons.add_box_outlined),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "San Jose,",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w100,
                              fontFamily: "Lemonada",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Text(
                              "CA",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w100,
                                fontFamily: "Lemonada",
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "24K",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Text("FOLLOWERS")
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "31",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Text("TRIPS")
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "21",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Text("BUCKET LIST")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
