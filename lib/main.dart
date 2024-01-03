import 'package:animations/views/bouncing_ball_animation.dart';
import 'package:animations/views/coin_drop_animations.dart';
import 'package:animations/views/crash_animation.dart';
import 'package:animations/views/cred_app_animations.dart';
import 'package:animations/views/loader_animations.dart';
import 'package:animations/views/rain_drop_animations.dart';
import 'package:animations/views/shimmer_effect.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: ListView(
        children: [
          getPackageNameRow(
            index: '1.',
            title: 'Shimmer Effect',
            action: pushShimmerEffect,
          ),
          getPackageNameRow(
            index: '2.',
            title: 'Loader Animations',
            action: pushLoaderAnimations,
          ),
          getPackageNameRow(
            index: '3.',
            title: 'Bouncing Ball Animations',
            action: pushBouncingBallAnimations,
          ),
          getPackageNameRow(
            index: '4.',
            title: 'Car Crash Animations',
            action: pushCarCrashAnimations,
          ),
          getPackageNameRow(
            index: '5.',
            title: 'Rain Drop Animations',
            action: pushRainDropAnimations,
          ),
          getPackageNameRow(
            index: '6.',
            title: 'Coin Drop Animations',
            action: pushCoinDropAnimations,
          ),
          getPackageNameRow(
            index: '7.',
            title: 'Cred App Animations',
            action: pushCredAppAnimations,
          ),
        ],
      ),
    );
  }

  VoidCallback pushCredAppAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CredAppAnimation(),
        ),
      );
    };
  }

  VoidCallback pushCoinDropAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CoinDropAnimation(),
        ),
      );
    };
  }

  VoidCallback pushRainDropAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const RaindropAnimation(),
        ),
      );
    };
  }

  VoidCallback pushCarCrashAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CarCrashAnimation(),
        ),
      );
    };
  }

  VoidCallback pushBouncingBallAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const BouncingBallAnimation(),
        ),
      );
    };
  }

  VoidCallback pushLoaderAnimations() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoaderAnimation(),
        ),
      );
    };
  }

  VoidCallback pushShimmerEffect() {
    return () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ShimmerEffectImplementation(),
        ),
      );
    };
  }

  Widget getPackageNameRow({
    required String index,
    required String title,
    required Function action,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 222, 217, 217),
        borderRadius: BorderRadius.circular(12),
      ),
      child: GestureDetector(
        onTap: action(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              index,
              style: const TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
    );
  }
}
