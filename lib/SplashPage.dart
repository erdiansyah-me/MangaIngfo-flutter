import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mangaingfo/LoginPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState()=> _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 122, 11, 100),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cover.png'),
            opacity: 0.3,
            fit: BoxFit.cover,)
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.book, 
                color: Color.fromARGB(255, 255, 255, 255),
                size: 100,
              ),
              Text(
                "MANGAINGFO", 
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),
              )
            ],
          )
        ),
      )
    );
  }
}