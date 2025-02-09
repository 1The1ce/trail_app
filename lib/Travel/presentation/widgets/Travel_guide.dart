import 'package:flutter/material.dart';

import 'Calendar_widget.dart';
import 'Indicator.dart';
import 'Options_widget.dart';

class TravelGuide extends StatelessWidget {
  const TravelGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      height: 552,
      width: 398,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)]),
      child: Column(
        spacing: 14,
        children: [
          CalendarWidgetsGroup(),
          Indicator_widget(),
          Stack(
            children: [
              Positioned(
                left: 75,
                child: Column(
                  spacing: 30,
                  children: [
                    OptionsExpFlight(title: "Uchish",
                      time: "8:30 am",
                      info: "Qayerdan",
                      place: "Toshkent",
                      info2: "Qayerga",
                      place2: "Madina",),
                    OptionsExpHotel(title: "Mehmonxona", time: "11:30 am",route_legth: "150M",),
                  ],
                ),
              ),
              OptionsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
