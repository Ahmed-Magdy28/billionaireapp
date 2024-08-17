import 'package:billionaireapp/BalanceView.dart';
import 'package:billionaireapp/addmoneyfunction.dart';
import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  final void Function() incrementCounter;
  final double bankBallance;
  const MyBody({super.key, required this.bankBallance, required this.incrementCounter});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromARGB(255, 51, 99, 121),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bank ballance',
                    style: TextStyle(fontSize: 30),
                  ),
                  Balanceview(bankBallance: bankBallance)
                ],
              )),
          AddMoney(addMoneyfunction: incrementCounter)
        ],
      ),
    );
  }
}
