import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class CustomAnimationScreen extends StatefulWidget {
  const CustomAnimationScreen({super.key});

  @override
  State<CustomAnimationScreen> createState() => _CustomAnimationScreenState();
}

class _CustomAnimationScreenState extends State<CustomAnimationScreen> {
  // final tween = MoovieTween();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Animation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomAnimation(
                    startPosition: 0.5,
                    builder: ((context, child, value) {
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value,
                        ),
                        child: const Text('Custom animate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )),
                      );
                    }),
                    duration: const Duration(seconds: 5),
                    tween: ColorTween(begin: Colors.blue, end: Colors.red)),
                PlayAnimation(
                  builder: ((context, child, value) {
                    return Container(
                      alignment: Alignment.center,
                      height: value,
                      width: value,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: const Text('Animate delay',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          )),
                    );
                  }),
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 100.0, end: 150.0),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LoopAnimation(
                  builder: ((context, child, value) {
                    return Transform.rotate(
                      angle: value,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            // borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.circle),
                        alignment: Alignment.center,
                        child: child,
                      ),
                    );
                  }),
                  tween: Tween(begin: 0.0, end: 2 * pi),
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                  child: const Text('Loop Animation',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                MirrorAnimation(
                  builder: ((context, child, value) {
                    return Container(
                      alignment: Alignment.center,
                      height: value,
                      width: value,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey,
                      ),
                      child: const Text('Animate grow',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          )),
                    );
                  }),
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: 100.0, end: 150.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
