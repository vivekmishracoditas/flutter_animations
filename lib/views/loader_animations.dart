import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoaderAnimation extends StatelessWidget {
  const LoaderAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loader Animations'),
      ),
      body: ListView(
        children: [
          Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: const Color.fromARGB(255, 157, 155, 155),
              size: 70,
            ),
          ),
          Center(
            child: LoadingAnimationWidget.twistingDots(
              leftDotColor: const Color.fromARGB(255, 123, 123, 216),
              rightDotColor: const Color.fromARGB(255, 188, 128, 161),
              size: 70,
            ),
          ),
          Center(
            child: LoadingAnimationWidget.waveDots(
              color: const Color.fromARGB(255, 194, 136, 136),
              size: 70,
            ),
          ),
          Center(
            child: LoadingAnimationWidget.inkDrop(
              color: const Color.fromARGB(255, 207, 96, 96),
              size: 70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.bouncingBall(
              color: const Color.fromARGB(255, 206, 36, 36),
              size: 70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.discreteCircle(
                color: const Color.fromARGB(255, 192, 214, 28),
                size: 70,
                secondRingColor: const Color.fromARGB(255, 234, 13, 13),
                thirdRingColor: Colors.purple),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.stretchedDots(
              color: const Color.fromARGB(255, 199, 19, 19),
              size: 70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.hexagonDots(
              color: const Color.fromARGB(255, 13, 79, 211),
              size: 70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: LoadingAnimationWidget.horizontalRotatingDots(
              color: const Color.fromARGB(255, 216, 15, 213),
              size: 70,
            ),
          ),
        ],
      ),
    );
  }
}
