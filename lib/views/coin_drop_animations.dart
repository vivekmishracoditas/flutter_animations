import 'package:animations/widgets/coin_drop_animation_widget.dart';
import 'package:flutter/material.dart';

class CoinDropAnimation extends StatelessWidget {
  const CoinDropAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin drop Animations'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CoinDropAnimationWidget()
          CoinDropAnimationWidget(
            imageName: 'lib/assets/dollar.png',
          ),
          SizedBox(width: 5),
          CoinDropAnimationWidget(
            imageName: 'lib/assets/rupee.png',
          ),
          SizedBox(width: 5),
          CoinDropAnimationWidget(
            imageName: 'lib/assets/dollar.png',
          ),
        ],
      ),
    );
  }
}
