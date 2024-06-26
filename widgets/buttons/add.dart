import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const IconButton(
      icon: Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      ),
      onPressed: null,
    );
  }
}
