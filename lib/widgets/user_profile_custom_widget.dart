import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget{
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({Key? key,
    required this.imagePath ,
    required this.onClicked ,
    required this.isEdit }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
        child: Stack(
          children: [
            buildImage(),
            Positioned(
                bottom: 0,
                right: 4,
                child: buildEditIcon(color)
            )
          ],
        )
    );
  }


  Widget buildImage(){
    final image = NetworkImage(imagePath);

    return ClipOval(
        child: Material(
            color: Colors.transparent,
            child: Ink.image(
                image: image,
                fit: BoxFit.cover,
                width: 128,
                height: 128,
                child: InkWell(onTap: onClicked)
            )
        )
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
    color: Colors.white60,
    all: 3,
    child: buildCircle(
      all : 8,
      color: color,
      child: Icon(
          isEdit ? Icons.edit : Icons.photo_camera_rounded,
          size: 13,
          color: Colors.white
      ),
    ),
  );

  Widget buildCircle({
    required Color color,
    required double all,
    required Widget child})
  => ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: color,
        child: child,
      )
  );

}