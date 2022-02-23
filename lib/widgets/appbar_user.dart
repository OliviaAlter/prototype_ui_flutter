import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}

AppBar buildAppBarEditMode(BuildContext context){
  return AppBar(
    automaticallyImplyLeading: true,
    backgroundColor: Colors.black87,
    elevation: 1,
    toolbarHeight: 44,
  );
}