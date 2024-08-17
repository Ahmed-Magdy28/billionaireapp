import 'package:billionaireapp/app_bar.dart';
import 'package:billionaireapp/container.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const BillionaireApp());
}

class BillionaireApp extends StatefulWidget {
  const BillionaireApp({super.key});

  @override
  State<BillionaireApp> createState() => _BillionaireAppState();
}

class _BillionaireAppState extends State<BillionaireApp> {
  double bankBallance = 0;
  void _incrementCounter() async {
    setState(() {
      bankBallance += 500;
    });
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('decimal', bankBallance);
  }
  void loadBallance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bankBallance = prefs.getDouble('decimal') ?? 0;
    });
  }
  @override
  void initState() {

    loadBallance();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Billionaire',
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: const MyAppBar(),
        body: MyBody(bankBallance: bankBallance, incrementCounter: _incrementCounter),),
      );
  }
}
