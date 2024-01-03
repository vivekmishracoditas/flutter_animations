import 'package:flutter/material.dart';

class CarCrashAnimation extends StatefulWidget {
  const CarCrashAnimation({super.key});

  @override
  _CarCrashAnimationState createState() => _CarCrashAnimationState();
}

class _CarCrashAnimationState extends State<CarCrashAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _carAnimation;
  late Animation<double> _heartAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _carAnimation = Tween<double>(begin: 0, end: 200).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.5)),
    );

    _heartAnimation = Tween<double>(begin: 0, end: 100).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 1.0)),
    );

    _controller.forward();
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Car Crash Animation')),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: Offset(_carAnimation.value, 0),
                  child: const Icon(
                    Icons.directions_car,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20),
                Opacity(
                  opacity: 1 - _heartAnimation.value / 100,
                  child: Icon(
                    Icons.favorite,
                    size: _heartAnimation.value,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
