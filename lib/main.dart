import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trail_app/Travel/presentation/widgets/Bonus_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Calendar_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Captions.dart';
import 'package:trail_app/Travel/presentation/widgets/Indicator.dart';
import 'package:trail_app/Travel/presentation/widgets/Options_widget.dart';

import 'Travel/presentation/pages/Searchlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchListPage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    width: 500,
                    height: 500,
                    // color: Colors.white,
                  ),
                  Positioned(
                    top: 78,
                    left: 24,
                    child: SvgPicture.asset(
                      "TravelAssets/icons/back-arrow.svg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Positioned(
                    top: 116,
                    child: Stack(
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
                  ),
                ],
              ),
              Container(
                height: 88,
                width: 398,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 3),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 9,
                        ),
                        Captions(caption: "Umra Safari"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: Text(
                            "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, Zamzam suvi (5 litr)",
                            softWrap: true,
                            style: TextStyle(
                                fontFamily: "Urbanist",
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
              Container(
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
                          left: 85,
                          child: Column(
                            spacing: 30,
                            children: [
                              OptionsExpFlight(title: "Uchish",
                                time: "8:30 am",
                                info: "Qayerdan",
                                place: "Toshkent",
                                info2: "Qayerga",
                                place2: "Madina",),
                              OptionsExpHotel(title: "Mehmonxona", time: "11:30 am"),
                            ],
                          ),
                        ),

                        OptionsWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
