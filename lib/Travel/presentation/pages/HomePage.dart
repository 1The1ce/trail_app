import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/Bonus_widget.dart';
import '../widgets/Calendar_widget.dart';
import '../widgets/Captions.dart';
import '../widgets/HomeMainImages.dart';
import '../widgets/Travel_guide.dart';
import '../widgets/Travel_info_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Center(child: SvgPicture.asset("TravelAssets/icons/back-arrow.svg")),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              spacing: 16,
              children: [
                HomeMain(),
                TravelInfoWidget(),
                Row(
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    CalendarItem(day: "10", date: "kun", place: "Madinada"),
                    CalendarItem(day: "5", date: "kun", place: "Makkada"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    Captions(caption: "Sayohat tarkibi"),
                  ],
                ),
                Row(
                  spacing: 3,
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    BonusWidget(info: "Sug\'urta"),
                    BonusWidget(info: "Chipta"),
                    BonusWidget(info: "Aviachipta"),
                    BonusWidget(info: "viza"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 23,
                    ),
                    Captions(caption: "Sayohat Kundaligi"),
                  ],
                ),
                TravelGuide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
