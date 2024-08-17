import 'package:flutter/material.dart';

class Balanceview extends StatelessWidget {
  final double bankBallance;
  const Balanceview({super.key, required this.bankBallance});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$ $bankBallance',
      style: const TextStyle(fontSize: 50),
    );
  }
}
