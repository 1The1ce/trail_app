import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trail_app/Travel/presentation/widgets/Bonus_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Calendar_widget.dart';
import 'package:trail_app/Travel/presentation/widgets/Captions.dart';
import 'package:trail_app/Travel/presentation/widgets/Umra_widget.dart';

class SearchListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3BB77E),
      body: UmraWidget(),
    );
  }
}