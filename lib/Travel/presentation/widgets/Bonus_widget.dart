import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BonusWidget extends StatelessWidget {
  const BonusWidget({super.key, required this.info, this.height = 19,this.fontSize=10,});

  final String info;
  final double height,fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      height: height,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF069C57),
          width: 1,
        ),
      ),
      child: Row(
        spacing: 2,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(1),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF069C57),
            ),
            child: Center(
              child: SvgPicture.asset(
                "TravelAssets/icons/tick.svg",
                width: 9,
                height: 7,
              ),
            ),
          ),
          Text(
            info,
            style: TextStyle(
              color: Color(0xFF069C57),
              fontFamily: "Urbanist",
              fontWeight: FontWeight.bold,
              fontSize:fontSize,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

class Bonus_widget_other extends StatelessWidget {
  const Bonus_widget_other({super.key,required this.numberLeft,this.height = 19,this.fontSize = 10});

  final String numberLeft;
  final double height,fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      height: height,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF069C57),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 15,
            width: 29,
            decoration: BoxDecoration(
              color: Color(0xFF069C57),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numberLeft,
                  style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: fontSize,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
