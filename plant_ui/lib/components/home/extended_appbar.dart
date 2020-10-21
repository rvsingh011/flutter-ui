import 'package:flutter/material.dart';

import '../../constants.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor, offset: Offset(0, 7), blurRadius: 50),
              ],
              color: kPrimaryColor,
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: size.height * 0.10,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hi Ravi!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: kTextColor),
                  ),
                  Image.asset('assets/images/logo.png')
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.07,
              width: size.width,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: TextField(
                    style: TextStyle(color: kPrimaryColor),
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: kPrimaryColor),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
