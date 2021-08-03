import 'package:flutter/material.dart';
import 'package:travel_app/addUiComponents/coupon.dart';
import 'package:travel_app/addUiComponents/likedPlaces.dart';
import 'package:travel_app/addUiComponents/news.dart';

class AddUi extends StatefulWidget {
  const AddUi({Key key}) : super(key: key);

  @override
  _AddUiState createState() => _AddUiState();
}

class _AddUiState extends State<AddUi> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {},
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 50.0,
                left: 15.0,
                child: Row(
                  children: [
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: DecorationImage(
                              image: AssetImage("assets/images/pngegg.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 125.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mask Stewart',
                            style: TextStyle(
                                fontFamily: "Lemonada",
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.green,
                              ),
                              Text(
                                'Senta Sara, CA',
                                style: TextStyle(
                                    fontFamily: "OleoScript",
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.green,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.0,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text(
                        "Your Liked Places",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "News",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Coupon",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 275.0,
            child: TabBarView(
              controller: tabController,
              children: [
                LikedPlaces(),
                News(),
                Coupon(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
