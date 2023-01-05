import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({super.key});

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Draggable(
                data: Colors.blue,
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                feedback: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    '12',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    '12',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              DragTarget(
                  onAccept: (Color data) {
                    setState(() {
                      color = data;
                    });
                  },
                  onLeave: (data) {},
                  builder: ((context, candidateData, rejectedData) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(15),
                          border: color == Colors.white
                              ? Border.all(
                                  color: Colors.grey,
                                  width: 3,
                                  style: BorderStyle.solid,
                                )
                              : Border.all(style: BorderStyle.none)),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
