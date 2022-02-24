import 'package:flutter/material.dart';

import '../models/charity_entity.dart';
import '../user-profile/user_profile.dart';

class DetailCharity extends StatelessWidget{
  final Charity charityLocation;

  const DetailCharity({Key? key, required this.charityLocation}) : super(key: key);

  @override
  Widget build(BuildContext context)
    => Scaffold(
      appBar: AppBar(title: Text(charityLocation.name)),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          Image.network(charityLocation.imageUrl,
              fit: BoxFit.cover,
              width: 150,
              height: 150),

          const SizedBox(height: 20),
          buildAboutCharity(charityLocation),
        ],
      )
    );
  }

