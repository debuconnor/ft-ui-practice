import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String imageUrl;

  const Profile({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
