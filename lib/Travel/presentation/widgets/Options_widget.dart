import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trail_app/Travel/presentation/widgets/Hider_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Captions.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 20,
                child: Column(
                  children: [
                    Container(height: 400, width: 1, color: Colors.grey)
                  ],
                ),
              ),
              Column(
                spacing: 90,
                children: [
                  SvgPicture.asset("TravelAssets/icons/AirPlane.svg"),
                  SvgPicture.asset("TravelAssets/icons/Frame46.svg"),
                  SvgPicture.asset("TravelAssets/icons/Frame49.svg"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OptionsExpanded extends StatelessWidget {
  const OptionsExpanded({
    super.key,
    required this.title,
    required this.time,
  });

  final String title, time;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 85,
      child: Container(
        width: 284,
        height: 109,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
            ),
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 0.5)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 98,
          children: [
            Column(
              spacing: 19,
              children: [
                SizedBox(),
                Row(
                  spacing: 100,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OptionsExpFlight extends StatelessWidget {
  const OptionsExpFlight({
    super.key,
    required this.title,
    required this.time,
    required this.info,
    required this.place,
    required this.info2,
    required this.place2,
  });

  final String title, time, info, place, info2, place2;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 85,
      child: Container(
        width: 284,
        height: 109,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
            ),
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 0.5)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 98,
          children: [
            Column(
              spacing: 19,
              children: [
                SizedBox(),
                Row(
                  spacing: 100,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 100,
                  children: [
                    Column(
                      children: [
                        Row(
                          spacing: 70,
                          children: [
                            Text(
                              info,
                              style: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontFamily: "Urbanist",
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              place,
                              style: TextStyle(
                                fontFamily: "Urbanist",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 70,
                          children: [
                            Text(
                              info2,
                              style: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontFamily: "Urbanist",
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              place2,
                              style: TextStyle(
                                fontFamily: "Urbanist",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OptionsExpHotel extends StatelessWidget {
  const OptionsExpHotel({
    super.key,
    required this.title,
    required this.time,
    required this.route_legth,
  });

  final String title, time, route_legth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284,
      height: 109,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(5),
          ),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 0.5)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 98,
        children: [
          Column(
            spacing: 8,
            children: [
              SizedBox(),
              Row(
                spacing: 60,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Image(
                    image: AssetImage("TravelAssets/images/places/museum.png"),
                    height: 68,
                  ),
                  Column(
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          Tour_place(place: "New Madina Hotel"),
                          SvgPicture.asset(
                            "TravelAssets/icons/map-pin.svg",
                            height: 11,
                          ),
                          Text(
                            route_legth,
                            style: TextStyle(
                              fontFamily: "Urbanist",
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 166,
                            child: Text(
                              softWrap: true,
                              "New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ",
                              style: TextStyle(
                                fontFamily: "Urbanist",
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      HiderWidget(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
