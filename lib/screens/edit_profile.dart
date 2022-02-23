import 'package:flutter/material.dart';
import 'package:prototype_ui_app/ultis/user_preference.dart';
import 'package:prototype_ui_app/widgets/appbar_base.dart';
import 'package:prototype_ui_app/widgets/user_profile_widget.dart';

import '../models/user.dart';
import '../widgets/text_field_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
    _EditProfilePageStage createState() => _EditProfilePageStage();
  }


class _EditProfilePageStage extends State<EditProfilePage>{
  User user = UserPreference.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBarEditMode(context),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 20),
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit : true,
          onClicked: () async {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "Full name",
          text: user.name,
          onChanged: (name) {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "Email",
          text: user.email,
          onChanged: (name) {},
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          label: "About",
          text: user.about,
          maxLines: 5,
          onChanged: (about) {},
        ),
        const SizedBox(height: 16),
      ],
    ),
  );

}