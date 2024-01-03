import 'package:animations/widgets/circular_chart.dart';
import 'package:flutter/material.dart';

class RotatingContainer extends StatefulWidget {
  const RotatingContainer({super.key});

  @override
  _RotatingContainerState createState() => _RotatingContainerState();
}

class _RotatingContainerState extends State<RotatingContainer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  int totalRotations = 25;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        totalRotations--;
        if (totalRotations > 0) {
          _controller.reset();
          _controller.forward();
        }
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: const Interval(0, 1, curve: Curves.linear),
        ),
      ),
      child: const PieChart(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
