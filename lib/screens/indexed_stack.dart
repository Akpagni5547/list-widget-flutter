import 'package:flutter/material.dart';

class IndexedStackScreen extends StatefulWidget {
  const IndexedStackScreen({super.key});

  @override
  State<IndexedStackScreen> createState() => _IndexedStackScreenState();
}

class _IndexedStackScreenState extends State<IndexedStackScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack component')),
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: IndexedStack(
                    index: index,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        color: Colors.greenAccent,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        color: Colors.limeAccent,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    color: const Color.fromARGB(255, 107, 188, 254),
                    height: MediaQuery.of(context).size.height / 8,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          child: Container(
                            color: index == 0
                                ? const Color.fromARGB(255, 3, 75, 133)
                                : const Color.fromARGB(255, 107, 188, 254),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 37, vertical: 25),
                            child: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 180, 213, 240),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: Container(
                            color: index == 1
                                ? const Color.fromARGB(255, 3, 75, 133)
                                : const Color.fromARGB(255, 107, 188, 254),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 37, vertical: 27),
                            child: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 180, 213, 240),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                          child: Container(
                            color: index == 2
                                ? const Color.fromARGB(255, 3, 75, 133)
                                : const Color.fromARGB(255, 107, 188, 254),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 36, vertical: 27),
                            child: Container(
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 180, 213, 240),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
