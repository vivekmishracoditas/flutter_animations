import 'package:animations/widgets/rain_drop_animation_widget.dart';
import 'package:flutter/material.dart';

class RaindropAnimation extends StatelessWidget {
  const RaindropAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rain Drop Animation'),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          for (double i = 0; i < 500; i++)
            RaindropAnimationWidget(
              screenHeight: MediaQuery.sizeOf(context).height,
              screenWidth: MediaQuery.sizeOf(context).width,
            ),
        ],
      ),
    );
  }
}
