import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HiderWidget extends StatelessWidget {
  const HiderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Color(0xFF069C57),
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
            "TravelAssets/icons/down-arrow.svg"),
      ),
    );
  }
}
