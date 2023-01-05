import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlayAnimationScreen extends StatefulWidget {
  const PlayAnimationScreen({super.key});

  @override
  State<PlayAnimationScreen> createState() => _PlayAnimationScreenState();
}

class _PlayAnimationScreenState extends State<PlayAnimationScreen> {
  String _textChanged = "Animation ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Animation'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlayAnimation(
                    builder: ((context, child, value) {
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value,
                        ),
                        child: const Text('Animate color',
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
                    delay: const Duration(seconds: 2),
                    builder: ((context, child, value) {
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value,
                        ),
                        child: const Text('Animate delay',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )),
                      );
                    }),
                    duration: const Duration(seconds: 5),
                    tween: ColorTween(begin: Colors.blue, end: Colors.red))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlayAnimation(
                    curve: Curves.slowMiddle,
                    builder: ((context, child, value) {
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value,
                        ),
                        child: const Text('Animate custom',
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
                    curve: Curves.bounceOut,
                    // onStart: () => setState(() {
                    //       _textChanged = 'Animation Started';
                    //     }),
                    onComplete: () => setState(() {
                          _textChanged = 'Animation Completed';
                        }),
                    builder: ((context, child, value) {
                      return Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value,
                        ),
                        child: Text(_textChanged,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            )),
                      );
                    }),
                    duration: const Duration(seconds: 5),
                    tween: ColorTween(begin: Colors.blue, end: Colors.red))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
