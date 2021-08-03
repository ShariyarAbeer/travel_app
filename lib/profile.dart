import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    bool tab = false;
    bool manu = false;
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
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "FOLLOWERS",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "31",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "TRIPS",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "21",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "BUCKET LIST",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.table_chart),
                        onPressed: () {
                          manu = false;
                          print(tab);
                          print(manu);
                        },
                        color: Colors.grey),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        manu = true;
                        print(manu);
                        print(tab);
                      },
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return _manuItemList();

                  // Column(
                  //   children: [if (manu) _manuItemList() else _tabItamList()],
                  // );

                  //manu == false ? _manuItemList() : _tabItamList();
                },
                itemCount: 3,
              )
            ],
          )
        ],
      ),
    );
  }

// _tabItamList
  Widget _manuItemList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: [
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: Colors.redAccent,
                  image: DecorationImage(
                      image: AssetImage("assets/images/image1.png"),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 9.0, top: 5.0, bottom: 5.0),
                      child: Text(
                        "Maldives - 12 Days",
                        style: TextStyle(
                            fontFamily: "Lemonada",
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 9.0, top: 5.0, bottom: 15.0),
                      child: Text(
                        "Tersa Soto - 52 Photos \n3 Videos",
                        style:
                            TextStyle(fontFamily: "Lemonada", fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }

  // Widget _tabItamList() {
  //   return Text("data");
  // }
}
