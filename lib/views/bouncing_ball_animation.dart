import 'package:animations/widgets/bouncing_circle.dart';
import 'package:flutter/material.dart';

class BouncingBallAnimation extends StatelessWidget {
  const BouncingBallAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Ball Animation'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BouncingCircle(
                  curve: Curves.bounceIn,
                  color: Colors.red,
                ),
                BouncingCircle(
                  curve: Curves.bounceInOut,
                  color: Colors.green,
                ),
                BouncingCircle(
                  curve: Curves.easeInCirc,
                  color: Colors.blue,
                ),
                BouncingCircle(
                  curve: Curves.easeInOutCubicEmphasized,
                  color: Colors.pink,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BouncingCircle(
                  curve: Curves.easeInOutSine,
                  color: Colors.yellow,
                ),
                BouncingCircle(
                  curve: Curves.easeInOutQuart,
                  color: Color.fromARGB(255, 240, 148, 11),
                ),
                BouncingCircle(
                  curve: Curves.easeInOutBack,
                  color: Color.fromARGB(255, 233, 33, 243),
                ),
                BouncingCircle(
                  curve: Curves.elasticInOut,
                  color: Color.fromARGB(255, 30, 233, 179),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
