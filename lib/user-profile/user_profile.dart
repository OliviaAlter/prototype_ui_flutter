import 'package:flutter/material.dart';
import 'package:prototype_ui_app/models/user_entity.dart';
import 'package:prototype_ui_app/user-profile/edit_profile.dart';
import 'package:prototype_ui_app/utils/user_preference.dart';

import '../models/charity_entity.dart';
import '../widgets/appbar_base_widget.dart';
import '../widgets/user_numbers_widget.dart';
import '../widgets/user_profile_custom_widget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>{
  @override
  Widget build(BuildContext context) {
    const user = UserPreference.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const EditProfilePage()),
              );
            },
            isEdit: true,
          ),
          const SizedBox(height: 20),
          buildName(user),
          const NumbersWidget(),
          const SizedBox(height: 35),
          buildAboutUser(user)
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black87),
      ),
    ],
  );

  Widget buildAboutUser(User user) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black87, height: 0.4),
          ),
          const SizedBox(height: 18),
          Text(
            user.about,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black87, height: 0.8),
          ),
        ],
      )
  );
}

Widget buildAboutCharity(Charity charity) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About this charity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black87),
          textAlign: TextAlign.center,

        ),
        const SizedBox(height: 18),
        Text(
          charity.description,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black87, height: 0.8),
          textAlign: TextAlign.center,
        ),
      ],
    )
);