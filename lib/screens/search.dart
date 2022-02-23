import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          const Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            top: 40,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(LineIcons.fontAwesomeFlag,
                  color: Colors.white,
                  size: 30,),
                ),
                const Text(
                  "Explore",
                   style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'CentraleSansRegular'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                Text(
                  "Featured",
                   style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 32,
                            fontFamily: 'CentraleSansRegular',
                            fontWeight: FontWeight.w100),
                ),
                Text(
                  "View all",
                   style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 20,
                            fontFamily: 'CentraleSansRegular',
                            fontWeight: FontWeight.w100),
                ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 110),
            height: 300,
            width: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset("assets/slide1.png"),
                Image.asset("assets/slide2.png"),
                Image.asset("assets/slide3.png")
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 370),
            height: 400,
            width: 400,
            child: ListView(
              children: <Widget>[
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad1.png"),
                  title: const Text("Feeding America Society",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: const Text("Oregon",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad2.png"),
                  title: const Text("Ubuntu",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: const Text("Maryland",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: const Text("Washington",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 15,
                        )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: const Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: const Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: const Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: const Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: const Text("Dallas Morning News",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )),
                  subtitle: const Text("Washington",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}