import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  "Seanta Sara, CA",
                  style: TextStyle(
                      fontFamily: "StyleScript",
                      fontSize: 40.0,
                      color: Colors.grey),
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text("Seanta Sara, CA",
                style: TextStyle(
                    fontFamily: "StyleScript",
                    fontSize: 20.0,
                    color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  )),
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: [
              _imageCard('neta', '4.6', 'assets/images/pngegg.png'),
              _imageCard('neta', '5', 'assets/images/image1.png'),
              _imageCard('neta', '5', 'assets/images/image4.png'),
              _imageCard('neta', '3.6', 'assets/images/image1.png'),
              _imageCard('neta', '1.6', 'assets/images/pngegg.png'),
              _imageCard('neta', '0.6', 'assets/images/image4.png'),
              _imageCard('neta', '4', 'assets/images/pngegg.png'),
              _imageCard('neta', '3.2', 'assets/images/image1.png'),
              _imageCard('neta', '4.1', 'assets/images/pngegg.png'),
              _imageCard('neta', '4.6', 'assets/images/image4.png'),
            ],
          )
        ],
      ),
    );
  }

  Widget _imageCard(String name, rateing, url) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 20,
            child: Text(name),
          ),
          Container(
            child: Text(rateing),
          ),
        ],
      ),
    );
  }
}
