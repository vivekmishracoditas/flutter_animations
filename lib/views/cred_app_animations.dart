import 'package:animations/widgets/rotating_container.dart';
import 'package:flutter/material.dart';

class CredAppAnimation extends StatelessWidget {
  const CredAppAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cred App Animations'),
      ),
      backgroundColor: Colors.black12,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                getOuterBorder(),
                getInnerBorder(),
                // const PieChart(),
                // getCircularRotatingWidget(),
                const RotatingContainer(),
                getOverlay(),
                getInnerWhiteBorder(),
                getInnerWidget(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  Container getInnerWidget() {
    return Container(
      margin: const EdgeInsets.all(135),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(175),
        border: Border.all(
          color: Colors.pink, // Set the border color here
          width: 2.0, // Set the border width here
        ),
      ),
    );
  }

  Container getInnerWhiteBorder() {
    return Container(
      margin: const EdgeInsets.all(125),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(175),
        border: Border.all(
          color: Colors.red, // Set the border color here
          width: 2.0, // Set the border width here
        ),
      ),
    );
  }

  Container getCircularRotatingWidget() {
    return Container(
      margin: const EdgeInsets.all(25),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(175),
      ),
    );
  }

  Container getOverlay() {
    return Container(
      margin: const EdgeInsets.all(25),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(175),
        border: Border.all(
          color: const Color.fromRGBO(
              255, 255, 255, .2), // Set the border color here
          width: 15.0, // Set the border width here
        ),
      ),
    );
  }

  Container getInnerBorder() {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 340,
      height: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(175),
        border: Border.all(
          color: const Color.fromARGB(
              255, 43, 18, 147), // Set the border color here
          width: 20.0, // Set the border width here
        ),
      ),
    );
  }

  Container getOuterBorder() {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(175),
        border: Border.all(
          color: Colors.white, // Set the border color here
          width: 5.0, // Set the border width here
        ),
      ),
    );
  }
}
