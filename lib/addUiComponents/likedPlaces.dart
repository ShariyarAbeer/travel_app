import 'package:flutter/material.dart';

class LikedPlaces extends StatefulWidget {
  const LikedPlaces({Key key}) : super(key: key);

  @override
  _LikedPlacesState createState() => _LikedPlacesState();
}

class _LikedPlacesState extends State<LikedPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width / 2 - 23,
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
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Maldives",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Lemonada",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Senta Sara, CA",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "OleoScript",
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
                                      Icons.local_offer_outlined,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Place",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
                                      Icons.location_on,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
                                      Icons.timer,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width / 2 - 23,
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
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Marvin Drive",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Lemonada",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Linked Way, CA",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "OleoScript",
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
                                      Icons.local_offer_outlined,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Place",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
                                      Icons.location_on,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
                                      Icons.timer,
                                      color: Colors.green,
                                      size: 12.0,
                                    ),
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                          fontSize: 12.0,
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
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
