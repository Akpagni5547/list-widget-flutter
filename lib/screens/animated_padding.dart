import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  double _currentPadding = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: _currentPadding, vertical: _currentPadding),
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                ),
                height: MediaQuery.of(context).size.width / 5,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Animated Padding',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    _currentPadding = _currentPadding == 0.0 ? 80.0 : 0.0;
                  });
                }),
                child: const Text('Changement de padding'))
          ],
        ),
      )),
    );
  }
}
