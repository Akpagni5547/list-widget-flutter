import 'package:exo_formation_flutter/screens/animated_padding.dart';
import 'package:exo_formation_flutter/screens/draggable.dart';
import 'package:exo_formation_flutter/screens/gesture_detector.dart';
import 'package:exo_formation_flutter/screens/indexed_stack.dart';
import 'package:exo_formation_flutter/screens/page_view.dart';
import 'package:exo_formation_flutter/screens/simple_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liste widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste widgets'),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: ListView(
          children: [
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((_) => const PageViewScreen()))),
              leading: const Icon(Icons.pages_outlined),
              title: const Text('PageView'),
              subtitle: const Text('Composant PageView'),
              tileColor: Colors.lightGreenAccent,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const IndexedStackScreen()))),
              leading: const Icon(Icons.indeterminate_check_box_outlined),
              title: const Text('IndexedStack'),
              subtitle: const Text('Composant IndexedStack'),
              tileColor: Colors.amber,
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((_) => const DraggableScreen()))),
              leading: const Icon(Icons.drag_handle),
              title: const Text('Draggable'),
              subtitle: const Text('Composant Draggable'),
              tileColor: Colors.teal,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const SimpleAnimationScreen()))),
              leading: const Icon(Icons.animation_outlined),
              title: const Text('SimpleAnimation'),
              subtitle: const Text('Composant SimpleAnimation'),
              tileColor: Colors.redAccent,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const AnimatedPaddingScreen()))),
              leading: const Icon(Icons.padding_outlined),
              title: const Text('AnimatedPadding'),
              subtitle: const Text('Composant AnimatedPadding'),
              tileColor: Colors.greenAccent,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((_) => const GestureDetectorWidget()))),
              leading: const Icon(Icons.gesture_sharp),
              title: const Text('GestureDetector'),
              subtitle: const Text('Composant GestureDetector'),
              tileColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
