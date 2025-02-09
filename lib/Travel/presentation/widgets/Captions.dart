import 'package:flutter/material.dart';

class Captions extends StatelessWidget {
  const Captions({
    super.key,
    required this.caption,
  });

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Text(
      caption,
      style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: "Urbanist"),
    );
  }
}

class Price extends StatelessWidget {
  const Price({super.key, required this.caption, required this.discount});

  final String caption, discount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          caption,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist"),
        ),
        Text(
          discount,
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            fontFamily: "Urbanist",
            fontSize: 9,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class Tour_type extends StatelessWidget {
  const Tour_type({super.key, required this.tour});

  final String tour;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(left:13),
        height: 19,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: Color(0xFF069C57),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          tour,
          style: TextStyle(
            fontFamily: "Urbanist",
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Color(0xFF069C57),
          ),
        ));
  }
}

class Tour_place extends StatelessWidget {
  const Tour_place({super.key, required this.place});

  final String place;

  @override
  Widget build(BuildContext context) {
    return Text(place, style: TextStyle(
        color: Color(0xffC4C4C4),
        fontWeight: FontWeight.w600,
        fontSize: 10,
        fontFamily: "Urbanist"),);
  }
}

