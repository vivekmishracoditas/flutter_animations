import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectImplementation extends StatefulWidget {
  const ShimmerEffectImplementation({super.key});

  @override
  State<ShimmerEffectImplementation> createState() =>
      _ShimmerEffectImplementationState();
}

class _ShimmerEffectImplementationState
    extends State<ShimmerEffectImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer Effect'),
      ),
      body: Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 231, 111, 102),
        highlightColor: const Color.fromARGB(255, 130, 223, 133),
        child: ListView(
          children: [
            getShimmerRow(),
            getShimmerRow(),
            getShimmerRow(),
            getShimmerRow(),
            getShimmerRow(),
            getShimmerRow(),
            getShimmerRow(),
          ],
        ),
      ),
    );
  }

  Widget getShimmerRow() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      height: 100,
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 222, 217, 217),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 230,
                  height: 25,
                  color: Colors.green,
                ),
                Container(
                  width: 230,
                  height: 25,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 25,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
