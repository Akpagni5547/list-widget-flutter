import 'dart:math';

import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  double _top = 10.0;
  double _left = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            Positioned(
                top: _top,
                left: _left,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      _top = max(0, _top + details.delta.dy);
                      _left = max(0, _left + details.delta.dx);
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
