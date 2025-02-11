import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterLoginPage extends StatefulWidget {
  const RegisterLoginPage({super.key});

  @override
  _RegisterLoginPageState createState() => _RegisterLoginPageState();
}

class _RegisterLoginPageState extends State<RegisterLoginPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> _titles = [
    "Ro‘yxatdan o‘tish",
    "Kodni Kiriting",
    "Ma'lumotlarni kiriting",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]), // Dynamic title
        leading: IconButton(
          icon: SvgPicture.asset(
            "TravelAssets/icons/back-arrow.svg",
            color: Color(0xff3BB77E),
          ),
          onPressed: () {
            if (_currentIndex > 0) {
              _pageController.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          _buildRegistrationPage(),
          _buildSmsCodePage(),
          _buildProfilePage(),
        ],
      ),
    );
  }

  Widget _buildRegistrationPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ro‘yxatdan o‘tish",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              fontFamily: "Urbanist",
            ),
          ),
          SizedBox(height: 62),
          _buildInputField("Telefon raqamingizni kiriting", "TravelAssets/icons/call.svg"),
          _buildButton("Ro‘yxatdan o‘tish"),
        ],
      ),
    );
  }

  Widget _buildSmsCodePage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SMS Kodni Kiriting",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: "Urbanist",
            ),
          ),
          SizedBox(height: 80),
          _buildInputField("Kodni kiriting", null),
          _buildButton("Tasdiqlash"),
        ],
      ),
    );
  }

  Widget _buildProfilePage() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 40),
          Image.asset("TravelAssets/icons/profile_image.png", width: 140, height: 140),
          SizedBox(height: 24),
          _buildInputField("Ismingiz", null),
          _buildInputField("Familiyangiz", null),
          _buildInputField("+998", null),
          _buildInputField("Viloyatingiz", "TravelAssets/icons/down-arrow.svg"),
        ],
      ),
    );
  }

  Widget _buildInputField(String hintText, String? iconPath) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          if (iconPath != null) SvgPicture.asset(iconPath),
          if (iconPath != null) SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 58,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Color(0xff3BB77E),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Urbanist",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
