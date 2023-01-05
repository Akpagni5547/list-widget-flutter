import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen>
    with AnimationMixin {
  double opacityText = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                onEnd: () {
                  setState(() {
                    opacityText = 1;
                  });
                },
                tween: Tween<double>(begin: 30, end: 100),
                curve: Curves.bounceOut,
                duration: const Duration(seconds: 1),
                builder: ((context, value, child) {
                  return Icon(
                    Icons.flash_on,
                    color: Colors.amber,
                    size: value,
                  );
                })),
            AnimatedOpacity(
              opacity: opacityText,
              duration: const Duration(seconds: 1),
              child: const Text(
                'Helios est dans la place',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
