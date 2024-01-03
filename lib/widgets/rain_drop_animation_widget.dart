import 'dart:math';

import 'package:flutter/material.dart';

class RaindropAnimationWidget extends StatefulWidget {
  const RaindropAnimationWidget(
      {super.key, required this.screenHeight, required this.screenWidth});
  final double screenHeight;
  final double screenWidth;

  @override
  State<RaindropAnimationWidget> createState() =>
      _RaindropAnimationWidgetState();
}

class _RaindropAnimationWidgetState extends State<RaindropAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  final Random _random = Random();
  late double dx, dy;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: _random.nextInt(3000)),
      vsync: this,
    );
    dx = _random.nextDouble() * widget.screenWidth;
    dy = _random.nextDouble() * -500;
    animation = Tween<double>(
      begin: dy,
      end: widget.screenHeight,
      // end: 400,
    ).animate(animationController);
    animationController.forward();
    animationController.addListener(
      () {
        if (animationController.isCompleted) {
          animationController.reset();
          dx = _random.nextDouble() * widget.screenWidth;
          dy = _random.nextDouble() * -500;
          animationController.duration = Duration(
            milliseconds: _random.nextInt(3000),
          );
          animationController.forward();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        return Transform.translate(
          offset: Offset(dx, animation.value),
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: 20,
            width: 2,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
