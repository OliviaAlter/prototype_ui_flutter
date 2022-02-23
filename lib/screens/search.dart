import 'package:flutter/material.dart';
import 'package:prototype_ui_app/data/charity_data.dart';
import 'package:prototype_ui_app/models/charity_entity.dart';

import '../widgets/appbar_base.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _FilterLocalListPageState createState() => _FilterLocalListPageState();
}


  class _FilterLocalListPageState extends State<Search>{
  late List<CharityLocation> charityLocations;
  String query = '';

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

  Widget buildCharity(CharityLocation charityLocation) => ListTile(
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








