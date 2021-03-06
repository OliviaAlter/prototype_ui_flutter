import 'package:flutter/material.dart';

import '../models/charity_entity.dart';
import '../user-profile/charity_profile.dart';

class DetailCharity extends StatelessWidget{
  final Charity charityLocation;

  const DetailCharity({Key? key, required this.charityLocation}) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Scaffold(
      appBar: AppBar(
        title: Text(charityLocation.name),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black87,
        elevation: 1,
        toolbarHeight: 58,),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 15),
          Image.network(charityLocation.imageUrl,
              fit: BoxFit.cover,
              width: 180,
              height: 150),

          const SizedBox(height: 20),
          buildAboutCharity(charityLocation),
        ],
      )
    );
  }

