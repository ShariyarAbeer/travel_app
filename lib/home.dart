import 'dart:ui';

import 'package:flutter/material.dart';

import 'search.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.graphic_eq_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text(
        //     "Travel",
        //     style: TextStyle(fontFamily: "StyleScript", fontSize: 30.0),
        //   ),
        //   centerTitle: true,
        // ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Travel",
                          style: TextStyle(
                              fontFamily: "StyleScript",
                              fontSize: 40.0,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 130.0,
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {},
                          iconSize: 30.0,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.blue,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/pngegg.png"),
                                    fit: BoxFit.cover)
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 5,
                                //     blurRadius: 7,
                                //     offset: Offset(0, 3),
                                //   )
                                // ],
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.grey.shade100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.ac_unit,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 17.0, left: 5.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "NEW TRIP 2021",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: "Lemonada"),
                                    ),
                                    Text(
                                      "Add Update",
                                      style: TextStyle(
                                          fontFamily: "OleoScript",
                                          fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                          IconButton(
                            icon: Icon(Icons.outbond_outlined),
                            onPressed: () {},
                            iconSize: 30.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'FROM THE COMMUNITY',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w100),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "View\n  All",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _imageCard(),
                  _imageCard(),
                  _imageCard(),
                ],
              ),
            ),
            Center(
              child: Search(),
            ),
            Center(
              child: Search(),
            ),
            Center(
              child: Search(),
            ),
          ],
        ));
  }

  Widget _imageCard() {
    return Padding(
      padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
      child: Container(
          height: 310.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 7.0,
                    offset: Offset(0.0, 0.75))
              ]),

          //MediaQuery.of(context).size.width / 2,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 225.0,
                    width: MediaQuery.of(context).size.width / 2 + 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          // bottomLeft: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/image1.png"),
                            fit: BoxFit.cover),
                        color: Colors.amber),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 111.0,
                        width: MediaQuery.of(context).size.width / 2 - 52.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              // bottomRight: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage("assets/images/image3.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.amber),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 112.0,
                              width:
                                  MediaQuery.of(context).size.width / 2 - 52.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      //   bottomRight: Radius.circular(15.0),
                                      // topRight: Radius.circular(15.0),
                                      ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image4.png"),
                                      fit: BoxFit.cover),
                                  color: Colors.amber),
                            ),
                          ),
                          Positioned(
                            child: Text(
                              "+2",
                              style: TextStyle(color: Colors.white),
                            ),
                            bottom: 20.0,
                            right: 10.0,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Maui Summer 2021",
                            style: TextStyle(
                                fontFamily: "Lemonada", fontSize: 15.0),
                          ),
                          Text(
                            "Teresa Seto added 5 Photos",
                            style: TextStyle(
                                fontFamily: "Lemonada",
                                fontSize: 10.0,
                                color: Colors.grey),
                          ),
                          Text(
                            "2h ago",
                            style: TextStyle(
                                fontFamily: "Lemonada",
                                fontSize: 10.0,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    )),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: Icon(Icons.ios_share), onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.comment_bank_outlined),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ],
                    )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
