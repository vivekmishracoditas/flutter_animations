import 'package:flutter/material.dart';

final class CoinDropAnimationWidget extends StatefulWidget {
  const CoinDropAnimationWidget({
    super.key,
    required this.imageName,
  });
  final String imageName;

  @override
  // ignore: library_private_types_in_public_api
  _CoinDropAnimationWidgetState createState() =>
      _CoinDropAnimationWidgetState();
}

class _CoinDropAnimationWidgetState extends State<CoinDropAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _positionAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _positionAnimation = Tween<double>(
      begin: 0,
      end: 400,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 2 * 3.14159, // 2π to complete one full rotation
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _positionAnimation.value),
          child: Transform.rotate(
            angle: _rotationAnimation.value,
            child: Stack(
              children: [
                Image.asset(
                  'lib/assets/dollar.png',
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  widget.imageName,
                  width: 70,
                  height: 70,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
