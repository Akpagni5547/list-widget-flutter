import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page view component')),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        // color: Colors.amber,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: PageView(
                controller: controller,
                // pageSnapping: false,
                physics: const ClampingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.brown,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(0,
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInSine);
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: currentIndex == 0 ? Colors.amber : Colors.grey,
                        shape: BoxShape.circle),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      controller.animateToPage(1,
                          duration: const Duration(seconds: 2),
                          curve: Curves.fastOutSlowIn);
                    })
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: currentIndex == 1 ? Colors.amber : Colors.grey,
                        shape: BoxShape.circle),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(2,
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: currentIndex == 2 ? Colors.amber : Colors.grey,
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
