import 'package:exo_formation_flutter/screens/animations/custom_animation.dart';
import 'package:exo_formation_flutter/screens/animations/loop_animation.dart';
import 'package:exo_formation_flutter/screens/animations/play_animation.dart';
import 'package:exo_formation_flutter/screens/animations/tween_animation.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class SimpleAnimationScreen extends StatefulWidget {
  const SimpleAnimationScreen({super.key});

  @override
  State<SimpleAnimationScreen> createState() => _SimpleAnimationScreenState();
}

class _SimpleAnimationScreenState extends State<SimpleAnimationScreen>
    with AnimationMixin {
  double opacityText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          scrollDirection: Axis.vertical,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const TweenAnimationScreen()))),
              child: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Tween animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const LoopAnimationScreen()))),
              child: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Loop animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const PlayAnimationScreen()))),
              child: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Play animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 27, color: Colors.black),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const CustomAnimationScreen()))),
              child: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Custom animation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
