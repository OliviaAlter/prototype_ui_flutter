import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Profile"),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}

AppBar buildAppBarEditMode(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Editing profile"),
    automaticallyImplyLeading: true,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}

AppBar buildAppBarSearch(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Charity organizations",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    actions: <Widget>[
      IconButton(icon: const Icon(Icons.search), onPressed: () {}),
    ],
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}
