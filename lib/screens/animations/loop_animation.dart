import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class LoopAnimationScreen extends StatefulWidget {
  const LoopAnimationScreen({super.key});

  @override
  State<LoopAnimationScreen> createState() => _LoopAnimationScreenState();
}

class _LoopAnimationScreenState extends State<LoopAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loop Animation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoopAnimation(
              builder: ((context, child, value) {
                return Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: value, borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: child,
                );
              }),
              tween: ColorTween(begin: Colors.blueGrey, end: Colors.cyan),
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: const Text('Loop Animation',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            const SizedBox(
              height: 20,
            ),
            MirrorAnimation(
              builder: ((context, child, value) {
                return Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: value, borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: child,
                );
              }),
              tween:
                  ColorTween(begin: Colors.blueAccent, end: Colors.pinkAccent),
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: const Text('Mirror Animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            )
          ],
        )),
      ),
    );
  }
}
