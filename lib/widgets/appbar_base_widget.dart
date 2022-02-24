import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Profile"),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 58,
  );
}

AppBar buildAppBarEditMode(BuildContext context){
  return AppBar(
    centerTitle: true,
    title: const Text("Editing profile"),
    automaticallyImplyLeading: true,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 58,
  );
}

