import 'package:flutter/material.dart';
import '../data/charity_data.dart';
import '../models/charity_entity.dart';

late List<CharityLocation> charityLocations;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
    _FilterLocalListPageState createState() => _FilterLocalListPageState();
  }

class _FilterLocalListPageState extends State<Search>{

  @override
  void initState(){
    super.initState();
    charityLocations = allCharities;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBarSearch(context),
    body: Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: charityLocations.length,
              itemBuilder: (context, index) {
                final charity = charityLocations[index];
                return buildCharity(charity);
              }),
        ),
      ],
    ),
  );
    /*
      appBar: AppBar(
        centerTitle: true,
        title:
          const Text("Charity organizations",
            style: TextStyle(fontSize: 20)
            ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        //elevation: 1,
        //toolbarHeight: 44,
        actions: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: charityLocations.length,
                itemBuilder: (context, index) {
                  final charity = charityLocations[index];
                  return buildCharity(charity);
                }),
          ),

          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearch(),
                );
              })
        ],
      ),
    );
  */

  Widget buildCharity(CharityLocation charityLocation)
  => ListTile(
        leading: Image.network(
          charityLocation.imageUrl,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(charityLocation.name),
        subtitle: Text(charityLocation.description),
      );
}

AppBar buildAppBarSearch(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Charity organizations",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    actions: <Widget>[
      //IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: DataSearch(),
            );
          }),
    ],
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}


class DataSearch extends SearchDelegate<String> {
  final charityNames = [
    "A", "B", "C", "D", "AB", "AC", "AD", "BA", "BC", "BD", "CA", "CB", "CD", "AD", "AB", "AC",
  ];

  var recentSearches = [
    "A", "B", "C", "D",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          color: Colors.red,
          child: Center(child: Text("Charity org")),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? charityNames
        : charityNames.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: const Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: const TextStyle(color: Colors.green)
              ),
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}