import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset('assets/icons/flower.svg'),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
          ),
        ],
      ),
    );
  }
}
