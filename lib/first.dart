import 'package:Chatbot/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

// "https://assets2.lottiefiles.com/packages/lf20_5rImXbDsO1.json"
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.asset('assets/chatbot.json', controller: _controller,
            onLoaded: (compos) {
          _controller
            ..duration = compos.duration
            ..forward().then((value) => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()))
                });
        }),
        Center(
          child: Text("Chatbot by Fahmid"),
        )
      ]),
    );
  }
}
