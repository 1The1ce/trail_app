import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trail_app/Travel/presentation/widgets/Bonus_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Calendar_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Captions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchList(),
    );
  }
}

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3BB77E),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(6),
          height: 529,
          width: 302,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color(0xff4b4b4b).withValues(alpha: 0.5),
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage("TravelAssets/images/places/makka.png"),
                      width: 285,
                      height: 169,
                      color: Colors.black.withValues(alpha: 0.2),
                      colorBlendMode: BlendMode.darken,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 244,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFF3BB77E)),
                      child: Center(
                        child: SvgPicture.asset("TravelAssets/icons/heart.svg",
                            width: 16, height: 16),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 25,
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 1),
                      width: 59,
                      height: 21,
                      decoration: BoxDecoration(
                          color: Color(0xFF3BB77E),
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          "14 kun",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 142,
                    left: 58,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "TravelAssets/icons/flight.svg",
                          height: 16,
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            "14 Okt",
                            style: TextStyle(color: Colors.white),
                          )),
                          height: 21,
                          width: 61,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFF3BB77E),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          "TravelAssets/icons/landing.svg",
                          height: 16,
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            "27 Okt",
                            style: TextStyle(color: Colors.white),
                          )),
                          height: 21,
                          width: 61,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFF3BB77E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    width: 274,
                    height: 69,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Captions(caption: "Umra Safari"),
                        SizedBox(
                          height: 12.5,
                        ),
                        Row(
                          children: [
                            CalendarItem(
                                day: "10", date: "kun", place: "Madinada"),
                            CalendarItem(
                                day: "5", date: "kun", place: "Makkada"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        width: 156,
                        height: 30,
                        child: Captions(caption: "Sayohat tarkibi"),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      BonusWidget(info: "Sug\'urta"),
                      BonusWidget(info: "Chipta"),
                      BonusWidget(info: "Viza"),
                      Bonus_widget_other(numberLeft: "6 +"),
                    ],
                  ),
                  Captions(caption: "Tariflar"),
                  Row(
                    spacing: 8,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 127,
                            height: 83,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF3BB77E),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Price(
                                      caption: "1200\$",
                                      discount: "1300\$",
                                    ),
                                  ],
                                ),
                                Text(
                                  "Afzalliklari",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 7,
                                    fontFamily: "Urbanist",
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        BonusWidget(
                                          info: "Transport Xizmati",
                                          height: 15,
                                          fontSize: 8,
                                        ),
                                        Row(
                                          children: [
                                            BonusWidget(
                                              info: "Nonushta",
                                              height: 15,
                                              fontSize: 8,
                                            ),
                                            Bonus_widget_other(
                                              numberLeft: "6 +",
                                              height: 15,
                                              fontSize: 8,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: -10,
                            left: 30,
                            child: Container(
                              width: 65,
                              height: 19,
                              child: Tour_type(tour: "Ekonom"),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            bottom: -8,
                            child: Container(
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
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 127,
                            height: 83,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF3BB77E),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Price(
                                      caption: "1400\$",
                                      discount: "1600\$",
                                    ),
                                  ],
                                ),
                                Text(
                                  "Afzalliklari",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 7,
                                    fontFamily: "Urbanist",
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        BonusWidget(
                                          info: "Transport Xizmati",
                                          height: 15,
                                          fontSize: 8,
                                        ),
                                        Row(
                                          children: [
                                            BonusWidget(
                                              info: "Nonushta",
                                              height: 15,
                                              fontSize: 8,
                                            ),
                                            Bonus_widget_other(
                                              numberLeft: "6 +",
                                              height: 15,
                                              fontSize: 8,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: -10,
                            left: 30,
                            child: Container(
                              width: 65,
                              height: 19,
                              child: Tour_type(tour: "Standart"),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            bottom: -8,
                            child: Container(
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
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 4,
                    width: 362,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.grey.shade500,
                    ),
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 39,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.green.shade200),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 274,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF069C57),
                    ),
                    child: Center(
                      child: Text(
                        "Batafsil...",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: "Urbanist",
                          color:Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
