import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: const Text(
            'Billionaire',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}