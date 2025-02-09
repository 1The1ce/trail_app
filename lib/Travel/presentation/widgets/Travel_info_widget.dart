import 'package:flutter/material.dart';

import 'Captions.dart';


class TravelInfoWidget extends StatelessWidget {
  const TravelInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
