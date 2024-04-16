import 'package:flutter/material.dart';
import './buttons/add.dart';
import './buttons/profile.dart';

class Header extends StatelessWidget {
  final String imageUrl;

  const Header({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Profile(imageUrl: imageUrl),
        const AddButton(),
      ],
    );
  }
}
