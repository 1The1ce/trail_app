import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarItem extends StatelessWidget {
  const CalendarItem(
      {super.key, required this.day, required this.date, required this.place});

  final String day, date, place;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 1),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFF3BB77E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "TravelAssets/icons/calendar.svg",
                      height: 14,
                      width: 14,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day,
                      style: TextStyle(
                          color: Color(0xFF3BB77E),
                          height: 1,
                          fontSize: 12,
                          fontFamily: "Urbanist"),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          color: Color(0xFF3BB77E),
                          height: 1,
                          fontSize: 4,
                          fontFamily: "Urbanist"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  place,
                  style: TextStyle(
                    color: Color(0xFF3BB77E),
                    fontFamily: "Urbanist",
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            width: 108,
            height: 23,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF3BB77E),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(11)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
