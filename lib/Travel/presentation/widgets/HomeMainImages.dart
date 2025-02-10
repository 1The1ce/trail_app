import 'package:flutter/material.dart';


class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  "TravelAssets/images/places/makka.png",
                ),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              color: Colors.white.withValues(
                  alpha: 0.5), // Use withOpacity for transparency
            ),
          ],
        ),
      ],
    );
  }
}
