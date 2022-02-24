import 'package:flutter/material.dart';
import '../data/charity_data.dart';
import '../models/charity_entity.dart';
import '../widgets/charity_details_widget.dart';

late List<Charity> charityLocations;

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
                return buildCharity(charity, index);
              }),
        ),
      ],
    ),
  );

  Widget buildCharity(Charity charityLocation, int index)
  => ListTile(
    leading: Image.network(
      charityLocation.imageUrl,
      fit: BoxFit.cover,
      width: 50,
      height: 50,
    ),
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)
          => DetailCharity(charityLocation: charityLocations[index])));
    },
    title: Text(charityLocation.name),
    subtitle: Text("Charity location : " + charityLocation.address),
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
    toolbarHeight: 58,
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