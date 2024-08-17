import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  final void Function() addMoneyfunction;

  const AddMoney({super.key, required this.addMoneyfunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: addMoneyfunction,
                  child: const Text('Click me'),
                ),
              );
  }
}